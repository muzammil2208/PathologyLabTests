@echo off
cd ..

rem Get current date and time in a valid format for file names
for /f "tokens=2 delims==" %%I in ('wmic os get localdatetime /value') do set "current_datetime=%%I"
set "current_date=%current_datetime:~0,4%-%current_datetime:~4,2%-%current_datetime:~6,2%"
set "current_time=%current_datetime:~8,2%-%current_datetime:~10,2%-%current_datetime:~12,2%"

rem Replace spaces in time with underscores
set "current_time=%current_time: =_%"
set file_name=login_test_%current_time%_%current_date%

rem Create a directory with the current date and time
mkdir "results\%file_name%"

rem Run Robot Framework tests and store results in the buffer directory
robot -d "results\buffer" -t "tc_login*" .

rem Copy results from the buffer directory to the directory named with the current date and time
xcopy "%cd%\results\buffer" "%cd%\results\%file_name%" /s 

echo Results copied successfully.
