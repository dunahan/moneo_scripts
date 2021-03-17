// Script provided by FunkySwerve, HigherGround
// Changed to syntax version 4.0.6.27rc3, dunahan@schwerterkueste.de

// Prints for every creature-file in a mod resref, name, cr and a ID-variable
// if its race is 

%mod = 'PLACE_YOUR_FILE_HERE.mod' or die$!;

for ('*.utc' in %mod) {
  $id = 0;
  if (/Race == 24) {
    for (/VarTable) {
      if (/~/Name eq "ID") {
        $id = /~/Value;
        print /TemplateResRef, ";", /FirstName, ";", /ChallengeRating, ";", $id, ";\n";
      }
    }
  }
}