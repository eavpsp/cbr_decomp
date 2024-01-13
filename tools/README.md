# gciso
**gciso** is a library for reading and writing *.iso* files for the Nintendo GameCube.

## Installation
Clone/Download the repository and call `pip install <dir>` on the directory containing `setup.py`.

## Documentation
If you use Python and want to modify GameCube ISOs, you probably already know enough to just look at the code and you will hopefully quickly find what you are looking for. If not, look at the documentation on [read the docs](http://gciso.rtfd.io/)

## Command Line Interface
The module is executable, so you can do some basic .iso modifications from the command line, [cli.py]() also somewhat serves as a mini-example of gciso's usage.

I took care to write good `--help` mesages, so have a look at them if you want to use gciso on the command line. The following is an overview of what you can do:

### read
extract `start.dol` from `melee.iso` to `melee.dol` on your filesystem:
```console
$ gciso read melee.iso start.dol melee.dol
```

extract `opening.bnr` from `melee.iso` to a PNG file, `melee_banner.png`:
```console
$ gciso read melee.iso opening.bnr melee_banner.png --banner
```

### write
replace `PlSs.dat` in `melee.iso` with a file on your filesystem `PlSs_mod.dat` (has to be the same size):
```console
$ gciso write melee.iso PlSs.dat PlSs_mod.dat
```

### isoinfo
```console
$ gciso isoinfo melee.iso
Game Code: b'GALE'
Maker Code: b'01'
Disk Id: 0
Version: 2
Game Name: b'Super Smash Bros Melee'

DOL offset: 0x1e800
DOL size: 0x438600
FST offset: 0x456e00
FST Size: 0x7529
Max FST Size: 0x7529
FST Entries: 0x4bc

Apploader Date: b'2001/11/14'
Apploader Entry Point: 0x81200268
Apploader Code Size: 0x14f4
Apploader Trailer Size: 0x1ade0
```

### ls
```console
$ gciso ls melee.iso audio/us --cols 5 --size
b'1padv.ssm' (161184)      b'1pend.ssm' (364160)      b'bigblue.ssm' (35200)     b'captain.ssm' (433344)
b'castle.ssm' (176736)     b'clink.ssm' (301312)      b'corneria.ssm' (400000)   b'dk.ssm' (208064)
b'drmario.ssm' (416480)    b'emblem.ssm' (484928)     b'end.ssm' (1632)          b'ending.ssm' (1170784)
b'falco.ssm' (511392)      b'fourside.ssm' (78752)    b'fox.ssm' (478240)        b'ganon.ssm' (419744)
b'garden.ssm' (429408)     b'gkoopa.ssm' (490464)     b'greatbay.ssm' (491200)   b'greens.ssm' (144928)
b'gw.ssm' (161408)         b'ice.ssm' (465888)        b'kirby.ssm' (580704)      b'kirbytm.ssm' (576640)
b'klaid.ssm' (305024)      b'kongo.ssm' (360288)      b'koopa.ssm' (518176)      b'last.ssm' (663584)
b'link.ssm' (320000)       b'luigi.ssm' (375552)      b'main.ssm' (2065152)      b'mario.ssm' (375072)
b'mars.ssm' (516416)       b'mewtwo.ssm' (454912)     b'mhands.ssm' (565376)     b'mutecity.ssm' (150976)
b'ness.ssm' (511648)       b'nr_1p.ssm' (122720)      b'nr_name.ssm' (339328)    b'nr_select.ssm' (240960)
b'nr_title.ssm' (153408)   b'nr_vs.ssm' (54720)       b'onett.ssm' (54752)       b'peach.ssm' (404832)
b'pichu.ssm' (561408)      b'pikachu.ssm' (607072)    b'pokemon.ssm' (497792)    b'pstadium.ssm' (101792)
b'pupupu.ssm' (123488)     b'purin.ssm' (336224)      b'samus.ssm' (311392)      b'smash2.sem' (132184)
b'venom.ssm' (340576)      b'yoshi.ssm' (323872)      b'zebes.ssm' (388960)      b'zs.ssm' (584544)
```

### bannerinfo
```console
$ gciso bannerinfo melee.iso opening.bnr
Magic Bytes: b'BNR1'

Metadata 0:
Game Name: b'SUPER SMASH BROS.'
Developer Name: b'Melee'
Full Game Title: b'SUPER SMASH BROS. Melee'
Full Developer Name: b'Nintendo/HAL Laboratory,Inc.'
Game Description: b"Nintendo's all-stars are ready to do \nbattle! Let the melee begin!"
```

### dolinfo
```console
$ gciso dolinfo melee.iso --order mem
BSS Memory Address: 0x804316c0
BSS Size: 0xa6309
Entry Point: 0x8000522c

Sections:
text 0 - DOL:    0x100 to   0x2520, Memory: 0x80003100 to 0x80005520 (size: 0x2420)
data 0 - DOL: 0x3b3e20 to 0x3b3fc0, Memory: 0x80005520 to 0x800056c0 (size: 0x1a0)
data 1 - DOL: 0x3b3fc0 to 0x3b4240, Memory: 0x800056c0 to 0x80005940 (size: 0x280)
text 1 - DOL:   0x2520 to 0x3b3e20, Memory: 0x80005940 to 0x803b7240 (size: 0x3b1900)
data 2 - DOL: 0x3b4240 to 0x3b4260, Memory: 0x803b7240 to 0x803b7260 (size: 0x20)
data 3 - DOL: 0x3b4260 to 0x3b4280, Memory: 0x803b7260 to 0x803b7280 (size: 0x20)
data 4 - DOL: 0x3b4280 to 0x3b6840, Memory: 0x803b7280 to 0x803b9840 (size: 0x25c0)
data 5 - DOL: 0x3b6840 to 0x42e6c0, Memory: 0x803b9840 to 0x804316c0 (size: 0x77e80)
Gap (memory): 0xa1fe0
data 6 - DOL: 0x42e6c0 to 0x4313c0, Memory: 0x804d36a0 to 0x804d63a0 (size: 0x2d00)
Gap (memory): 0x1640
data 7 - DOL: 0x4313c0 to 0x4385e0, Memory: 0x804d79e0 to 0x804dec00 (size: 0x7220)
```

## Tests
To run the tests, you need a Super Smash Bros. Melee Iso (NTSC, v1.02) (md5: `0e63d4223b01d9aba596259dc155a174`).
Set the path to the iso to an environment variable named `GCISO_TEST_ISO_PATH` and you also need to download a reference export of the `opening.bnr` banner image, which you can find [here](http://download.theshoemaker.de/gciso_test/banner_ref.png) (put it into the `tests` directory).
