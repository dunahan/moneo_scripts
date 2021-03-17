%mod = 'Path of Ascension CEP Legends.mod';

for (%mod['*.utc']) {
  for (/VarTable) {
    if (/~/Name eq "OtherImmunes") {
      $crit = int(/~/Value / 10000) % 10;
      $mind = int(/~/Value / 100000) % 10;
      if (($crit & 2) && ($mind & 1) &&
          /TemplateResRef ne 'h_baatoriangreen' &&
          /TemplateResRef ne 'h_coldforgecons'  &&
          /TemplateResRef ne 'h_infernalmachi' &&
          /TemplateResRef ne 'h_osyluth'       &&
          /TemplateResRef ne 'dedicated'       &&
          /TemplateResRef ne 'ph_tigal') {
        /~/Value = /~/Value + 600000;
        print /TemplateResRef, " ", /~/Value, "\n";
      }
    }
  }
}

%mod = '>';
close(%mod);
