echo off
SET public = C:\Users\public

systeminfo > %public%\SysInfo.txt
tasklist -v >> %public%\SysInfo.txt
