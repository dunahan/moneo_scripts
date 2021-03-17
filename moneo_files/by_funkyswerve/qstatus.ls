%mod = 'Path of Ascension CEP Legends.mod';

for (%mod['*.utc']) {
  for (/VarTable) {
    if (/~/Name eq "QSDeathTag") {
      print /TemplateResRef, " ", /~/Value, "\n";
    }
  }
}
