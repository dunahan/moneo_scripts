// Script provided from FunkySwerve, HigherGround
// Changed to syntax version 4.0.6.27rc3, dunahan@schwerterkueste.de

// Scans every creature-file in the specified module for equipped items
// and prints the ResRef and its Dropable-Flag.

%mod = 'PLACE_YOUR_FILE_HERE.mod' or die$!;

for ('*.utc' in %mod) {
  for (/Equip_ItemList) {
    print /~/EquippedRes, ";", /~/Dropable, "\n";
  }
}

close %mod;