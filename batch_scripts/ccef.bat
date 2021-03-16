set tempf=C:\tmp\mod\
set moneo=C:\tmp\
set nivto=C:\util\nwn_nim64\
set files="C:\Users\dunahan\Documents\Neverwinter Nights\modules\moneo\"
set script=msp

REM copy area files
copy %files%*.are %tempf% /Y
copy %files%*.git %tempf% /Y
copy %files%*.gic %tempf% /Y

REM create erf
%nivto%nwn_erf -c %tempf% -f %moneo%mod.erf

REM run moneo script
%moneo%m27 %script%.ls > %script%.txt
