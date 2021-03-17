%mod = 'Path of Ascension CEP Legends.mod';

for (%mod['*.uti']) {
  print /TemplateResRef, "	", /LocalizedName, "\n";
}
