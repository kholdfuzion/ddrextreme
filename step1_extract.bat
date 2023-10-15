if not exist data_raw mkdir data_raw

tools\sys573tool.exe --mode dump --input data_source --output data_raw --key EXTREME --type ddr --input-filenames tools\ddrextrm_filenames.json

pause
