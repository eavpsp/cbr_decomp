#!/usr/bin/env python3

import os

def apply(config, args):
    config['mapfile'] = 'obj/cbr.map'
    config['expected_mapfile'] = 'obj-expected/cbr.map'
    config['map_format'] = 'mw'
    config['build_dir'] = "obj/" # only needed for mw map format
    config['expected_build_dir'] = 'obj-expected/'
    config['myimg'] = 'obj/main.elf'
    config['baseimg'] = 'obj-expected/main.elf'
    config['makeflags'] = []
    if args.source:
        config['makeflags'].append('DEBUG=1')
    config['source_directories'] = ['src', 'libs', 'include']
    config['arch'] = 'ppc'
    config['objdump_executable'] = f"{os.environ['DEVKITPPC']}/bin/powerpc-eabi-objdump"
