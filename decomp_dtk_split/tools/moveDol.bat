@echo off
set "sourceFile=Z:\RE\GIT\cbr_decomp_dtk\build\GGTE01\Start.dol"
set "destinationFolder=Z:\RE\ISO\cbr_dump_re\root\&&systemdata"

echo Copying %sourceFile% to %destinationFolder%...

rem Ensure the destination folder exists
if not exist "%destinationFolder%" mkdir "%destinationFolder%"

rem Remove existing Start.dol in the destination folder
if exist "%destinationFolder%\Start.dol" (
    del "%destinationFolder%\Start.dol"
    echo Removed existing Start.dol.
)

rem Copy the file to the destination folder and rename it to Start.dol
copy "%sourceFile%" "%destinationFolder%\Start.dol"

echo Copy complete.
