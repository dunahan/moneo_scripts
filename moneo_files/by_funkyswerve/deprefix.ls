%mod = 'Path of Ascension CEP Legends.mod';

for (%mod['*.uti']) {
  if (/PaletteID == 3 && substr(/LocalizedName, 0, 4) eq "ABO ") {
    /PaletteID = 1;
    /LocalizedName = substr(/LocalizedName, 4, 100);
    print /TemplateResRef, " '", /LocalizedName, "'\n";
  }
}

%mod = '>';
close(%mod);
