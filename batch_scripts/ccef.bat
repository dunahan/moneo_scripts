@echo off
REM build up environment
set tempf=C:\tmp\mod\
set moneo=C:\tmp\
set nivto=C:\Users\Wirth\Documents\util\nwn_nim64\
set files="C:\Users\Wirth\Documents\Neverwinter Nights\modules\_schwerterkueste261ee\"
set script=msp

md %tempf%
md %moneo%chg

REM copy area files
copy /Y %files%*.are %tempf%
copy /Y %files%*.git %tempf%
copy /Y %files%*.gic %tempf%

REM create erf
%nivto%nwn_erf -c %tempf% -f %moneo%mod.erf

REM run moneo script
%moneo%m27 %script%.ls > %script%.txt

REM goto folder unpack the files from erf
REM cd %moneo%chg\
REM %nivto%nwn_erf -f %moneo%\mod.erf -x
