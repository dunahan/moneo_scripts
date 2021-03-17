%mod = 'Path of Ascension CEP Legends.mod';

for (%mod['*.uti']) {
  print "/TemplateResRef /LocalizedName\n" if /ArmorPart_Torso == 175;
}

close(%mod);
