%mod = 'Path of Ascension CEP Legends.mod';

for (%mod['*.utc']) {
  for (/VarTable) {
    if (/~/Name eq "OtherImmunes") {
      $crit = int(/~/Value / 10000) % 10;
      $abil = int(/~/Value / 100000000) % 10;
      if (($crit & 1) && !($crit & 4) && ($abil == 1 || $abil == 3 || $abil == 4 || $abil == 7 || $abil == 8)) {
        print /TemplateResRef, " ", /~/Value;
        /~/Value += 40000;
        print " ", /~/Value, "\n";
      }
    }
  }
}

%mod = '>';
%close(%mod);
