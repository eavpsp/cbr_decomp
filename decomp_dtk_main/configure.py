#!/usr/bin/env python3

###
# Generates build files for the project.
# This file also includes the project configuration,
# such as compiler flags and the object matching status.
#
# Usage:
#   python3 configure.py
#   ninja
#
# Append --help to see available options.
###

import sys
import argparse


from pathlib import Path
from tools.project import (
    Object,
    ProjectConfig,
    calculate_progress,
    generate_build,
    is_windows,
)

# Game versions
DEFAULT_VERSION = 0
VERSIONS = [
    "GGTE01",	# 0
]

if len(VERSIONS) > 1:
    versions_str = ", ".join(VERSIONS[:-1]) + f" or {VERSIONS[-1]}"
else:
    versions_str = VERSIONS[0]

parser = argparse.ArgumentParser()
parser.add_argument(
    "mode",
    default="configure",
    help="configure or progress (default: configure)",
    nargs="?",
)
parser.add_argument(
    "--version",
    dest="version",
    default=VERSIONS[DEFAULT_VERSION],
    help=f"version to build ({versions_str})",
)
parser.add_argument(
    "--build-dir",
    dest="build_dir",
    type=Path,
    default=Path("build"),
    help="base build directory (default: build)",
)
parser.add_argument(
    "--compilers",
    dest="compilers",
    type=Path,
    help="path to compilers (optional)",
)
parser.add_argument(
    "--map",
    dest="map",
    action="store_true",
    help="generate map file(s)",
)
parser.add_argument(
    "--debug",
    dest="debug",
    action="store_true",
    help="build with debug info (non-matching)",
)
if not is_windows():
    parser.add_argument(
        "--wrapper",
        dest="wrapper",
        type=Path,
        help="path to wibo or wine (optional)",
    )
parser.add_argument(
    "--build-dtk",
    dest="build_dtk",
    type=Path,
    help="path to decomp-toolkit source (optional)",
)
parser.add_argument(
    "--sjiswrap",
    dest="sjiswrap",
    type=Path,
    help="path to sjiswrap.exe (optional)",
)
parser.add_argument(
    "--verbose",
    dest="verbose",
    action="store_true",
    help="print verbose output",
)
args = parser.parse_args()

config = ProjectConfig()
config.version = args.version.upper()
if config.version not in VERSIONS:
    sys.exit(f"Invalid version '{config.version}', expected {versions_str}")
version_num = VERSIONS.index(config.version)

# Apply arguments
config.build_dir = args.build_dir
config.build_dtk_path = args.build_dtk
config.compilers_path = args.compilers
config.debug = args.debug
config.generate_map = args.map
config.sjiswrap_path = args.sjiswrap
if not is_windows():
    config.wrapper = args.wrapper

# Tool versions
config.compilers_tag = "20231018"
config.dtk_tag = "v0.6.2"
config.sjiswrap_tag = "v1.1.1"
config.wibo_tag = "0.6.9"
config.asflags = [
    "-mgekko",
    "--strip-local-absolute",
    "-I include",
    f"-I build/{config.version}/include",
    f"--defsym version={version_num}",
]


# Project
config.config_path = Path("config") / config.version / "config.yml"
config.check_sha_path = Path("config") / config.version / "build.sha1"
config.ldflags = [
    "-fp hardware",
    "-nodefaults",
    # "-listclosure", # Uncomment for Wii linkers
]

# Base flags, common to most GC/Wii games.
# Generally leave untouched, with overrides added below.
cflags_base = [
    "-nodefaults",
    "-proc gekko",
    "-align powerpc",
    "-enum int",
    "-fp hardware",
    "-Cpp_exceptions off",
    "-use_lmw_stmw on",
    # "-W all",
    "-O4,p",
    "-inline auto",
    '-pragma "cats off"',
    '-pragma "warn_notinlined off"',
    "-maxerrors 1",
    "-nosyspath",
    "-RTTI on",
    "-char signed",
    "-fp_contract on",
    "-str reuse",
	"-multibyte", # For Wii compilers, replace with `-enc SJIS`
    "-i include",
    "-i src/sysdolphin/baselib",
    "-i src/sysdolphin",
    f"-i build/{config.version}/include",
    "-multibyte",
    f"-DVERSION={version_num}",
]

# Debug flags
if config.debug:
    cflags_base.extend(["-sym on", "-DDEBUG=1"])
else:
    cflags_base.append("-DNDEBUG=1")

# Metrowerks library flags
cflags_runtime = [
    *cflags_base,
    "-use_lmw_stmw on",
    "-str reuse,pool,readonly",
    "-gccinc",
    "-common off",
	"-inline auto",
]
# Metrowerks library flags
cflags_trk = [
    *cflags_base,
    "-use_lmw_stmw on",
    "-str reuse,readonly",
    "-common off",
    "-sdata 0",
    "-sdata2 0",
    "-inline auto,deferred",
    "-enum min",
    "-sdatathreshold 0"
]
# Metrowerks library asm flags
cflags_asm = [
    "-mgekko",
    "--strip-local-absolute",
    "-I include",
    f"-I build/{config.version}/include",
    f"--defsym version={version_num}",
]


# REL flags
cflags_rel = [
    *cflags_base,
    "-sdata 0",
    "-sdata2 0",
]

config.linker_version = "GC/1.3.2"


# Helper function for Dolphin libraries
def DolphinLib(lib_name, objects):
    return {
        "lib": lib_name,
        "mw_version": "GC/1.3.2",
        "cflags": cflags_base,
        "host": False,
        "objects": objects,
    }


# Helper function for REL script objects
def Rel(lib_name, objects):
    return {
        "lib": lib_name,
        "mw_version": "GC/1.3.2",
        "cflags": cflags_rel,
        "host": True,
        "objects": objects,
    }


Matching = True
NonMatching = False

config.warn_missing_config = True
config.warn_missing_source = False
config.libs = [
    {
        "lib": "Runtime.PPCEABI.H",
        "mw_version": config.linker_version,
        "cflags": cflags_runtime,
        "host": False,
        "objects": [
            Object(Matching, "Runtime.PPCEABI.H/__init_cpp_exceptions.cpp"),
            Object(Matching, "Runtime.PPCEABI.H/global_destructor_chain.c"),
           
        ],
    },
    {
        "lib": "Dolphin",
        "mw_version": config.linker_version,
        "cflags": cflags_runtime,
        "host": False,
        "objects": [
            Object(Matching, "Dolphin/Runtime/__mem.c"),
            Object(Matching, "Dolphin/Runtime/__va_arg.c"),
            Object(Matching, "Dolphin/os/OSAudioSystem.c"),
            Object(Matching, "Dolphin/os/OSLink.c"),
            Object(Matching, "Dolphin/os/OSSync.c"),
            Object(Matching, "game/system/checkstatefield.cpp"),
            Object(Matching, "Dolphin/os/__start.c"),
            Object(Matching, "Dolphin/os/__ppc_eabi_init.cpp"),
            Object(Matching, "Dolphin/card/CARDOpen.c"),
            Object(Matching, "Dolphin/dvd/dvdqueue.c"),
            Object(Matching, "Dolphin/dvd/dvderror.c"),
            Object(Matching, "Dolphin/dvd/dvdFatal.c"),
            Object(Matching, "Dolphin/MSL_C/MSL_Common_Embedded/Math/Double_precision/s_copysign.c", extra_cflags=["-i include/stl"]),
            Object(Matching, "Dolphin/MSL_C/MSL_Common_Embedded/Math/Double_precision/s_floor.c", extra_cflags=["-i include/stl"]),
            Object(Matching, "Dolphin/MSL_C/MSL_Common_Embedded/Math/Double_precision/s_frexp.c", extra_cflags=["-i include/stl"]),
            Object(Matching, "Dolphin/MSL_C/MSL_Common_Embedded/Math/Double_precision/s_ldexp.c", extra_cflags=["-i include/stl"]),
            Object(Matching, "Dolphin/MSL_C/MSL_Common_Embedded/Math/Double_precision/s_modf.c", extra_cflags=["-i include/stl"]),
            Object(Matching, "Dolphin/MSL_C/MSL_Common_Embedded/Math/Double_precision/e_fmod.c", extra_cflags=["-i include/stl"]),
            Object(Matching, "Dolphin/MSL_C/MSL_Common_Embedded/Math/Double_precision/e_rem_pio2.c", extra_cflags=["-i include/stl"]),
            Object(Matching, "Dolphin/MSL_C/MSL_Common_Embedded/Math/Double_precision/k_cos.c", extra_cflags=["-i include/stl"]),
            Object(Matching, "Dolphin/MSL_C/MSL_Common_Embedded/Math/Double_precision/k_rem_pio2.c", extra_cflags=["-i include/stl"]),
            Object(Matching, "Dolphin/MSL_C/MSL_Common_Embedded/Math/Double_precision/k_sin.c", extra_cflags=["-i include/stl"]),
            Object(Matching, "Dolphin/MSL_C/MSL_Common_Embedded/Math/Double_precision/k_tan.c", extra_cflags=["-i include/stl"]),
            Object(Matching, "Dolphin/MSL_C/MSL_Common_Embedded/Math/Double_precision/s_atan.c", extra_cflags=["-i include/stl"]),
            Object(Matching, "Dolphin/MSL_C/MSL_Common_Embedded/Math/Double_precision/s_tan.c", extra_cflags=["-i include/stl"]),
            Object(Matching, "Dolphin/MSL_C/MSL_Common/mem.c", extra_cflags=["-i include/stl"]),
            Object(Matching, "Dolphin/MSL_C/MSL_Common/mem_funcs.c"),
            Object(Matching, "Dolphin/MSL_C/MSL_Common/ansi_files.c", extra_cflags=["-i include/stl"]),
            Object(Matching, "Dolphin/MSL_C/MSL_Common/file_io.c"),
            Object(Matching, "Dolphin/MSL_C/MSL_Common/buffer_io.c", extra_cflags=["-i include/stl"]),
            Object(Matching, "Dolphin/MSL_C/MSL_Common/ctype.c", extra_cflags=["-i include/stl"]),
            Object(Matching, "Dolphin/si/SISamplingRate.c"),

        ],
    },
       {
        "lib": "TRK_MINNOW_DOLPHIN",
        "mw_version": config.linker_version,
        "cflags": cflags_trk,
        "host": False,
        "objects": [
            Object(Matching, "TRK_MINNOW_DOLPHIN/mem_TRK.c"),
            Object(Matching, "TRK_MINNOW_DOLPHIN/__exception.o"),
            Object(Matching, "TRK_MINNOW_DOLPHIN/dolphin_trk.c"),
            Object(Matching, "TRK_MINNOW_DOLPHIN/main_TRK.c"),
            Object(Matching, "TRK_MINNOW_DOLPHIN/nubinit.c"),
            Object(Matching, "TRK_MINNOW_DOLPHIN/flush_cache.c"),
            Object(Matching, "TRK_MINNOW_DOLPHIN/targcont.c"),



        ],
    },
     
     {
        "lib": "SysDolphin",
        "mw_version": config.linker_version,
        "cflags": cflags_runtime,
        "host": False,
        "objects": [
            Object(Matching, "THP/THPAudio.cpp"),
            

        ],
    },
     {
        "lib": "BaseLib",
        "mw_version": config.linker_version,
        "cflags": cflags_runtime,
        "host": False,
        "objects": [
            Object(Matching, "game/system/registershortcut.cpp"),
            Object(Matching, "game/system/initparams.cpp"),
            Object(Matching, "game/system/ringbufferupdate.cpp"),
            Object(Matching, "game/system/gdevccshutdown.cpp"),
            Object(Matching, "game/system/carddeletehandler.cpp"),
            Object(Matching, "game/system/disableobjfunc.cpp"),
            Object(Matching, "game/system/initcardhandler.cpp"),
            Object(Matching, "game/system/initializecard.cpp"),
            Object(Matching, "game/system/initializecarddata.cpp"),
            Object(Matching, "game/system/initializecard2.cpp"),
            Object(Matching, "game/system/cardwrappers.cpp"),
            Object(Matching, "game/system/cardwrappers2.cpp"),
            Object(Matching, "game/system/initcameramemento.cpp"),
            Object(Matching, "game/system/getvalueataddr.cpp"),
            Object(Matching, "game/system/loadcardhandler.cpp"),
            Object(Matching, "game/system/cardhandlerthread.cpp"),
            Object(Matching, "game/system/gdevccshutdown2.cpp"),
            Object(Matching, "game/system/gdevccshutdown3.cpp"),
            Object(Matching, "game/system/project3d.cpp"),
            Object(Matching, "game/system/vecelemmul.cpp"),
            Object(Matching, "game/system/findlargestvalue.cpp"),
            Object(Matching, "game/system/clearinterrupts.cpp"),
            Object(Matching, "game/system/processtreenode.cpp"),
            Object(Matching, "game/system/processobjectsintree.cpp"),
            Object(Matching, "game/system/processtranslationx.cpp"),
            Object(Matching, "game/system/renderchildupdatestate.cpp"),
            Object(Matching, "game/system/translatexdeps.cpp"),
            Object(Matching, "game/system/updatechildobjtree.cpp"),
            Object(Matching, "game/system/cleanupobject.cpp"),
            Object(Matching, "game/system/renderdepthfx.cpp"),
            Object(Matching, "game/system/initgraphicsettings.cpp"),
            Object(Matching, "game/system/configureeffectbuffer.cpp"),
            Object(Matching, "game/system/iswithinrange.cpp"),
            Object(Matching, "game/system/setelementinarray.cpp"),
            Object(Matching, "game/system/updatejunktypeavailabilityflags.cpp"),
            Object(Matching, "game/system/updateobjectsinlinkedlistwithmask.cpp"),
            Object(Matching, "game/system/getdat.cpp"),
            Object(Matching, "game/system/handletextobjects.cpp"),
            Object(Matching, "game/system/isprocessconditionmet.cpp"),
            Object(Matching, "game/system/leadingzeros.cpp"),
            Object(Matching, "game/system/copyvector3.cpp"),
            Object(Matching, "game/graphics/game_gx.cpp"),
            Object(Matching, "game/globals.cpp"),
            Object(Matching, "game/game.cpp"),
            Object(Matching, "game/title.cpp"),
            Object(Matching, "game/unk_unused/unk_functions.cpp"),
            Object(Matching, "game/system/getviewportaspect.cpp"),
            Object(Matching, "game/system/hsdaddshadowobjects.cpp"),
            Object(Matching, "game/system/getcameravaluesearch.cpp"),
            Object(Matching, "game/system/getcameravalue.cpp"),
            Object(Matching, "game/system/getvalflag.cpp"),
            Object(Matching, "game/system/checkstatus.cpp"),
            Object(Matching, "game/system/normalizedbytevalues.cpp"),
            Object(Matching, "game/system/calcdistancefromorigin.cpp"),
            Object(Matching, "game/system/miscsmallaccessors1.cpp"),
            Object(Matching, "game/system/checkplayerdistfromground.cpp"),
            Object(Matching, "game/system/computewrappeddistance.cpp"),
            Object(Matching, "game/system/miscsmallaccessors2.cpp"),
            Object(Matching, "game/system/miscsmallaccessors3.cpp"),
            Object(Matching, "game/system/miscsmallaccessors4.cpp"),
            Object(Matching, "game/system/miscsmallaccessors5.cpp"),
            Object(Matching, "game/system/findmatchingbucket.cpp"),
            Object(Matching, "game/system/setobjectflagsandtimer.cpp"),
            Object(Matching, "game/system/resetjobjmatrixdirty.cpp"),
            Object(Matching, "game/system/miscsmallaccessors6.cpp"),
            Object(Matching, "game/system/miscsmallaccessors7.cpp"),
            Object(Matching, "game/system/handlemodelloadinganimating.cpp"),
            Object(Matching, "game/system/handlefielderdesirestate.cpp"),
            Object(Matching, "game/system/getboxlengths.cpp"),
            Object(Matching, "game/system/processdatawithinit.cpp"),
            Object(Matching, "game/system/initparticleemission.cpp"),
            Object(Matching, "game/system/updateaudiostreamstate.cpp"),
            Object(Matching, "game/system/childobjdispatch1.cpp"),
            Object(Matching, "game/system/childobjdispatch2.cpp"),
            Object(Matching, "game/system/childobjdispatch3.cpp"),
            Object(Matching, "game/system/findandregisterfreeslot.cpp"),
            Object(Matching, "game/system/updateratelimitedvalue.cpp"),
            Object(Matching, "game/system/initparam1.cpp"),
            Object(Matching, "game/system/addpsvectorwithscalar.cpp"),
            Object(Matching, "game/system/processfielderdesire.cpp"),
            Object(Matching, "game/system/resetfielderframestate.cpp"),
            Object(Matching, "game/system/updatefielderchildsearch.cpp"),
            Object(Matching, "game/system/updatefielderchildsearch2.cpp"),
            Object(Matching, "game/system/processchibimodeldata.cpp"),
            Object(Matching, "game/system/handlefielderdesire.cpp"),
            Object(Matching, "game/system/loadfielderdatafile.cpp"),
            Object(Matching, "game/system/resetprojectilescale.cpp"),
            Object(Matching, "game/system/handlefielderstatetransition.cpp"),
            Object(Matching, "game/system/updatefielderweightvec.cpp"),
            Object(Matching, "game/system/clearprojectilefields.cpp"),
            Object(Matching, "game/system/initfielderobject.cpp"),
            Object(Matching, "game/system/setobjstateandnotify.cpp"),
            Object(Matching, "game/system/projectiledestructor.cpp"),
            Object(Matching, "game/system/initfielderdevicestate.cpp"),
            Object(Matching, "game/system/initfielderdevicetables.cpp"),
            Object(Matching, "game/gameobjects/cameraaction.cpp"),
            Object(Matching, "game/gameobjects/xobj.cpp"),
            Object(Matching, "game/system/incrementinteger.cpp"),
            Object(Matching, "game/system/flagutil.cpp"),
            Object(Matching, "game/system/vecscale.cpp"),
            Object(Matching, "game/system/initcameraparams.cpp"),
            Object(Matching, "game/system/resetglobals.cpp"),
            Object(Matching, "game/system/resetcameradata.cpp"),
            Object(Matching, "game/system/isbitset.cpp"),
            Object(Matching, "game/system/getplayerprompt.cpp"),
            Object(Matching, "game/system/normalizedposition.cpp"),
            Object(Matching, "game/system/floatcompare.cpp"),
            Object(Matching, "game/system/valonoff.cpp"),
            Object(Matching, "game/system/getresultfromglobal.cpp"),
            Object(Matching, "game/system/getshortfields.cpp"),
            Object(Matching, "game/system/dataarambaseaddr.cpp"),
            Object(Matching, "game/system/printmoduleinfo.cpp"),
            Object(Matching, "game/system/closeanddatacleanup.cpp"),
            Object(Matching, "game/system/startloadmoduleexec.cpp"),
            Object(Matching, "game/system/initdevicedata.cpp"),
            Object(Matching, "game/system/deviceindextables.cpp"),
            Object(Matching, "game/system/getmaskedstagevalue.cpp"),
            Object(Matching, "game/system/findstageindex.cpp"),
            Object(Matching, "game/system/getstageoffsetext4.cpp"),
            Object(Matching, "game/system/stagelookup.cpp"),
            Object(Matching, "game/system/getstagecount.cpp"),
            Object(Matching, "game/system/getvalfromptr.cpp"),
            Object(Matching, "game/system/resourceptr1.cpp"),
            Object(Matching, "game/system/resourceu16a.cpp"),
            Object(Matching, "game/system/resourceptr2.cpp"),
            Object(Matching, "game/system/resourceu8extra.cpp"),
            Object(Matching, "game/system/resourceu16b.cpp"),
            Object(Matching, "game/system/resourcebitfield.cpp"),
            Object(Matching, "game/system/resourceptr3.cpp"),
            Object(Matching, "game/system/handlemoduleloading.cpp"),
            Object(Matching, "game/system/resourcerange.cpp"),
            Object(Matching, "game/system/checkmainflags.cpp"),
            Object(Matching, "game/system/resourcevalues.cpp"),
            Object(Matching, "game/system/cgamesfx.cpp"),
            Object(Matching, "game/system/audiostate.cpp"),
            Object(Matching, "game/system/stringregistry.cpp"),
            Object(Matching, "game/system/cfile.cpp"),


        ],
    },
]

if args.mode == "configure":
    # Write build.ninja and objdiff.json
    generate_build(config)

elif args.mode == "progress":
    # Print progress and write progress.json
    config.progress_each_module = args.verbose
    calculate_progress(config)
else:
    sys.exit("Unknown mode: " + args.mode)
