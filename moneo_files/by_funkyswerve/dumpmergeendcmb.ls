%mod = 'Path of Ascension CEP Legends.mod';

for (%mod['*.utc']) {
  for (/VarTable) {
    if (/~/Name eq "MergeEndcombat") {
        print /TemplateResRef, "	", /~/Value, "\n";
    }
  }
}
