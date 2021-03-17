%mod = 'Path of Ascension CEP Legends.mod';

for (%mod['*.uti']) {
  if (/BaseItem == 24) {
      print /TemplateResRef, " ", /ModelPart1, "\n";
  }
}
