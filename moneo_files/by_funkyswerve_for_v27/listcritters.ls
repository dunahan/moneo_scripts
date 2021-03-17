// Script provided from dunahan@schwerterkueste.de
// Syntax version 4.0.6.27rc3

// Prints for every creature-file in the specified module
// Tag, Name and ResRef

%mod = 'PLACE_YOUR_FILE_HERE.mod' or die$!;

for ('*.utc' in %mod) {
  print /Tag, ";", /FirstName, ";", /TemplateResRef, ";\n";
}

close %mod;
