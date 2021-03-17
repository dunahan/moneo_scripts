%mod = 'Path of Ascension CEP Legends.mod';

for (%mod['*.uti']) {
  if (/StackSize > 10) {
    for (/PropertiesList) {
      if (/~/PropertyName == 82 && /~/Subtype == 125) {
        /~/Subtype = 135;
        print /TemplateResRef, " ", /StackSize, "\n";
      }
    }
  }
}

%mod = '>';
close(%mod);
