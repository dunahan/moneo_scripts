%mod = 'Path of Ascension CEP Legends.mod';

for (%mod['*.uti']) {
  if (/BaseItem == 52) {
    if (/ModelPart1 == 165) {
      print /TemplateResRef, " ", /ModelPart1, "\n";
    }
  }
}
