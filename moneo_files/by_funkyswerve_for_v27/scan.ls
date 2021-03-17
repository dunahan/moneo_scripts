// Script provided from FunkySwerve, HigherGround
// Changed to syntax version 4.0.6.27rc3, dunahan@schwerterkueste.de

// Scans for every creature-file in the specified module with a ResRef
// beginning with myc_ and then prints the ResRef, FirstName and LastName

%mod = 'PLACE_YOUR_FILE_HERE.mod' or die$!;

for ('myc_*.utc' in %mod) {
  print /TemplateResRef, ";", /FirstName, ";", /LastName, ";\n";
}
