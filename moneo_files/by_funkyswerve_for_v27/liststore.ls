// Script provided from FunkySwerve, HigherGround
// Changed to syntax version 4.0.6.27rc3, dunahan@schwerterkueste.de

// Scans for every shop in the specified module and prints its ResRef
// also its displayed name.

%mod = 'PLACE_YOUR_FILE_HERE.mod' or die$!;

for ('*.git' in %mod) {
  for (/StoreList) {
    for (/~/StoreList) {
      for (/~/ItemList) {
        if (/~/PaletteID != 238) {
          print /~/TemplateResRef, " = ", /~/LocalizedName, "\n";
        }
      }
    }
  }
}
