// Script provided from FunkySwerve, HigherGround
// Changed to syntax version 4.0.6.27rc3, dunahan@schwerterkueste.de

// Changes the PaletteID for every waypoint beginning with randwp.

%mod = 'PLACE_YOUR_FILE_HERE.mod' or die$!;

for ('randwp*.uti' in %mod) {
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