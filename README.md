# Dance Dance Revolution Extreme
This is a decompilation of the System 573/arcade version of Dance Dance Revolution Extreme.

## Instructions
Note: **YOU MUST PROVIDE YOUR OWN DATA!**

[Microsoft Visual Studio 2015 x86 Redistributable](https://www.microsoft.com/en-US/download/details.aspx?id=48145) is required for tools to work properly.

1. Extract the contents of your Dance Dance Revolution Extreme CD to the `data_source` folder. You should have a `DAT` folder, `GAME.DAT`, `CARD.DAT`, and `PSX.EXE` file in this folder.
2. Run `step1_extract.bat` (`step1_extract.sh` if you are on *nix) to generate the `data_raw` folder.

***(this step needs to be fixed to use the sn toolchain not normal gcc for matching)***
3. Under linux compile src/aout you will need `gcc-mipsel-linux-gnu`. 

4. Run `step2_make.bat` (`step2_make.sh` if you are on *nix) to build the `ddrextrm.iso`.

Additionally, if you are building this for MAME, you must use `chdman` (included with MAME) to build the required CHD.
1. Generate CHD using `chdman.exe createcd -i ddrextrm.iso -o c36jaa02.chd -c none` (`-c none` is requested because the compression can throw timing off in MAME).
2. Overwrite `roms/ddr5m/c36jaa02.chd` in your MAME folder with the newly generated `c36jaa02.chd`.
3. Delete `nvram/ddrextrm` in order to force reinstallation when you boot `ddrextrm` next in MAME.
4. You must run MAME from the command line instead of through the normal MAME UI to bypass hash check errors

If you wish to extract the CD bin/cue from a CHD file, use `chdman.exe extractcd -i c36jaa02.chd -o c36jaa02.cue`.

## Additional Instructions (*NIX ONLY)
If you are building using *nix, you must compile the required Cython modules:
1. `cd tools/py`
2. `python3 -m pip install -r requirements.txt`
2. `python3 setup.py build_ext --inplace`


## Notes
- Dipswitch 1 can be toggled on/off to enable/disable autoplay (even on real hardware)

## Thanks
- @WannyTiggah for the edited title screen and icon edits
- @SakamotoNeko13 for the edited 4PANEL/6PANEL graphics on the style select screen
- @dragonminded for testing with a real Solo cabinet