// Script provided from FunkySwerve, HigherGround
// Changed to syntax version 4.0.6.27rc3, dunahan@schwerterkueste.de

// Scans for every placeable in the specified module and prints its
// ResRef, OnOpen-Script, its counted contents and displayed name.

%mod = 'PLACE_YOUR_FILE_HERE.mod' or die$!;

for ('*.utp' in %mod) {
  if (/PaletteID == 201) {
    $contents = 0;

    for (/ItemList) {
      $contents++;
    }

    print /TemplateResRef, ";", /OnOpen, ";", $contents, " = ", /LocName, "\n";
  }
}
