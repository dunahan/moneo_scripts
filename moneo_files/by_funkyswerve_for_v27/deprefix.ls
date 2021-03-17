// Script provided by FunkySwerve, HigherGround
// Changed to syntax version 4.0.6.27rc3, dunahan@schwerterkueste.de

// Chances for every item-file that has the PaletteID 3 and
// its LocalizedName begins with "ABO " the PaletteID to 1 and
// deletes the prefix "ABO ".
// For logging, prints every worked file with ResRef & LocalizedName.

%mod = 'PLACE_YOUR_FILE_HERE.mod' or die$!;

for ('*.uti' in %mod) {
  if (/PaletteID == 3 && substr(/LocalizedName, 0, 4) eq "ABO ") {
    /PaletteID = 1;

    /LocalizedName = substr(/LocalizedName, 4, 100);
    print /TemplateResRef, ";", /LocalizedName, ";\n";
  }
}

%mod = '>';
close %mod;
