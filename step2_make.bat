if not exist build mkdir build

xcopy /Y /E /H /C data_source\* build
if exist build\deleteme.txt del build\deleteme.txt
copy src\aout\build\aout.exe data_raw\soft\s573\aout.exe
rem tools\sys573tool.exe --mode build --input data_raw --input-modified-list data_modified\modified.json --base data_source --key EXTREME --output build --patch-dir data_modified
rem tools\thirdparty\armips.exe src\main.asm
tools\sys573tool.exe --mode checksum --input build\GAME.DAT build\CARD.DAT --output build
tools\thirdparty\mkisofs.exe -d -o ddrextrm.iso "build"
chdman.exe createcd -i ddrextrm.iso -o c36jaa02.chd -c none -f
pause