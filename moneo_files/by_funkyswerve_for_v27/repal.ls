// Script provided from FunkySwerve, HigherGround
// Changed to syntax version 4.0.6.27rc3, dunahan@schwerterkueste.de

// Prints for every placeable-file in a specified hak-file the ResRef
// and PaletteID.

%hak = '../hak/PLACE_YOUR_FILE_HERE.hak' or die$!;

for ('*.utp' in %hak) {
  /PaletteID = 59;

  print /TemplateResRef, ";", /PaletteID, ";\n";

}

# %hak = '>';

close(%hak);
