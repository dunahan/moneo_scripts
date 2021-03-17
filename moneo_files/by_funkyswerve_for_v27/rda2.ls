// Script provided from FunkySwerve, HigherGround
// Changed to syntax version 4.0.6.27rc3, dunahan@schwerterkueste.de

// Scans all item-files from a specified module for its BaseItem-Value
// and ModelPart1. If both are equal to the specified values, it prints
// the ResRef and ModelPart of the item.

%mod = 'PLACE_YOUR_FILE_HERE.mod' or die$!;

for ('*.uti' in %mod) {
  if (/BaseItem == 52) {
    if (/ModelPart1 == 165) {
      print /TemplateResRef, ";", /ModelPart1, ";\n";
    }

  }
}
