%mod = 'Path of Ascension CEP Legends.mod';

for (%mod['randwp*.uti']) {
  if (/PaletteID != 200 && /PaletteID != 201 && /PaletteID != 202 && /PaletteID != 203) {
    if (/Cost > 2000000) {
      /PaletteID = 203;
    } elsif (/Cost > 1000000) {
      /PaletteID = 202;
    } elsif (/Cost > 100000) {
      /PaletteID = 201;
    } else {
      /PaletteID = 200;
    }
  }
}

%mod = '>';
close %mod;

