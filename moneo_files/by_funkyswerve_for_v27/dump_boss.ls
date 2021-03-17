// Script provided by dunahan@schwerterkueste.de
// Syntax version 4.0.6.27rc3

// Prints name, resref, cr and cr adjust of all creature-files
// of a module if its resref contains boss

%mod = 'PLACE_YOUR_FILE_HERE.mod' or die$!;

print "Name;ResRef;CR;CR-Adjust;\n;";

for ('*.utc' in %mod) {
  if (substr(/TemplateResRef) eq 'boss') {
    print /FirstName, ";", /TemplateResRef, ";", /ChallengeRating, ";", /CRAdjust, ";\n";
  }
}

close %mod;