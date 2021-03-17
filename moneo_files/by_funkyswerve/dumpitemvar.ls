%mod = 'Path of Ascension CEP Legends.mod';

for (%mod['*.uti']) {
  for (/VarTable) {
    if (/~/Name eq "MissileResref") {
        print /TemplateResRef, "	", /~/Value, "\n";
    }
  }
}
