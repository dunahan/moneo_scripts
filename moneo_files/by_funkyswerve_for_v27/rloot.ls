// Script provided from FunkySwerve, HigherGround
// Changed to syntax version 4.0.6.27rc3, dunahan@schwerterkueste.de

// Scans for every placeable-file in a specified module and prints
// its ResRef and the value of a variable named RLoot, if it exists.

%mod = 'PLACE_YOUR_FILE_HERE.mod' or die$!;

for ('*.utp' in %mod) {
  print /TemplateResRef, " ", $i, "\n";
  if (/VarTable) {
    for (/VarTable) {
      if (/~/Name eq "RLoot") {
        /PaletteID = 201;
      }
    }
  }
}

%mod = '>';
close(%mod);
