#!/bin/bash

mkdir -p build

cp -r data_source/* build
rm -f build/deleteme.txt
cd src/aout
make clean
make -j
cd ../..
cp src/aout/build/aout.exe data_raw/soft/s573/aout.exe
python3 tools/py/build_sys573_gamefs.py --input data_raw --input-modified-list data_modified/modified.json --base data_source --key EXTREME --output build --patch-dir data_modified

#armips src/main.asm

python3 tools/py/calc_checksum.py --input build/GAME.DAT build/CARD.DAT --output build

mkisofs -d -o ddrextrm.iso "build"

