@echo off
title z390 ADDLIST Test

echo =====================================
echo z390 ADDLIST START
echo =====================================

cd /d "C:\Program Files (x86)\Automated Software Tools\z390"

call ASM C:\z390\work\Add_Column_Number_2\ADDLIST
call LINK C:\z390\work\Add_Column_Number_2\ADDLIST
call EXEC C:\z390\work\Add_Column_Number_2\ADDLIST

pause



