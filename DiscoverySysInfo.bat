echo off
SET public = C:\User\public

systeminfo > %public%\SysInfo.txt
tasklist -v >> %public%\SysInfo.txt
