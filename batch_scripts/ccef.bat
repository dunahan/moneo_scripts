set tempf=C:\tmp\mod\
set moneo=C:\tmp\
set nivto=C:\util\nwn_nim64\
set files="C:\Users\dunahan\Documents\Neverwinter Nights\modules\moneo\"
set script=msp

REM copy area files
copy /Y %files%*.are %tempf%
copy /Y %files%*.git %tempf%
copy /Y %files%*.gic %tempf%

REM create erf
%nivto%nwn_erf -c %tempf% -f %moneo%mod.erf

REM run moneo script
%moneo%m27 %script%.ls > %script%.txt

REM goto folder unpack the files from erf
cd %moneo%chg\
%nivto%nwn_erf -f %moneo%\mod.erf -x
