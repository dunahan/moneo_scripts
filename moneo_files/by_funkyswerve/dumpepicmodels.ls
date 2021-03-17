%mod = 'Path of Ascension CEP Legends.mod';

for (%mod['es_*.uti']) {
  print /TemplateResRef, "	", /LocalizedName, "	", /ModelPart1, "\n";
}
