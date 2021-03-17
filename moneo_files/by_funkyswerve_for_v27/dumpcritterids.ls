// Script provided by FunkySwerve, HigherGround
// Changed to syntax version 4.0.6.27rc3, dunahan@schwerterkueste.de

// Prints for all creature-files, if they are from race number 24
// (see 2da) and has a variable named "ID", the resref, name, cr and
// the value of this variable

%mod = 'PLACE_YOUR_FILE_HERE.mod' or die$!;

for ('*.utc' in %mod) {
  $id = 0;
  if (/Race == 24) {
    for (/VarTable) {
      if (/~/Name eq "ID") {
        $id = /~/Value;
        $id = 0;
        print /TemplateResRef, ";", /FirstName, ";", /ChallengeRating, ";", $id, ";\n";
      }
    }
  }
}

close %mod;