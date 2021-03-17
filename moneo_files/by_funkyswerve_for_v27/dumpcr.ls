// Script provided by FunkySwerve, HigherGround
// Changed to syntax version 4.0.6.27rc3, dunahan@schwerterkueste.de

// Prints for every creature-file in the module the resref, cr, name
// and race.

%mod = 'PLACE_YOUR_FILE_HERE.mod' or die$!;



for ('*.utc' in %mod) {
  print /TemplateResRef, ";", /ChallengeRating, ";", /FirstName, ";",/Race, ";\n";

}