%mod = 'Path of Ascension CEP Legends.mod';

for (%mod['*.uti']) {
  for (/VarTable) {
    if (/~/Name eq "MissileUnlimited") {
      /~/Name = "Unlimited";
      /~/Value = /BaseItem;

      print /TemplateResRef, " ", /BaseItem, " ", /~/Name, " ", /~/Value, "\n";
    }
  }
}

%mod = '>';
close(%mod);
