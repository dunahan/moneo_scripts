%mod = 'Path of Ascension CEP Legends.mod';

for (%mod['*.utp']) {
  if (/PaletteID == 201) {
    $contents = 0;
    for (/ItemList) {
      $contents++;
    }
    print /TemplateResRef, " ", /OnOpen, " ", $contents, " = ", /LocName, "\n";
  }
}
