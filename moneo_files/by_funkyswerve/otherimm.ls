%mod = 'Path of Ascension CEP Legends.mod';

for (%mod['h_*.utc']) {
  for (/VarTable) {
    if (/~/Name eq "OtherImmunes") {
      $crit = int(/~/Value / 10000) % 10;
      if (!($crit & 2)) {
        print /TemplateResRef, " ", /~/Value, "\n";
      }
    }
  }
}
