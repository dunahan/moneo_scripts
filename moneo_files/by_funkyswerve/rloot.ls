%mod = 'Path of Ascension CEP Legends.mod';

for (%mod['*.utp']) {
  print /TemplateResRef, " ", $i, "\n";
  if (/VarTable) {
    for (/VarTable) {
      if (/~/Name eq "RLoot") {
        /PaletteID = 201;
      }
    }
  }
}

%mod = '>';
close(%mod);
