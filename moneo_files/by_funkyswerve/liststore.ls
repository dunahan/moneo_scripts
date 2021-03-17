%mod = 'Path of Ascension CEP Legends.mod';

for (%mod['*.git']) {
  for (/StoreList) {
    for (/~/StoreList) {
      for (/~/ItemList) {
        if (/~/PaletteID != 238) {
          print /~/TemplateResRef, " = ", /~/LocalizedName, "\n";
        }
      }
    }
  }
}
