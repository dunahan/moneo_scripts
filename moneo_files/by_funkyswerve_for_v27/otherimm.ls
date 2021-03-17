// Script provided from FunkySwerve, HigherGround
// Changed to syntax version 4.0.6.27rc3, dunahan@schwerterkueste.de

// Scans every creature-file in the specified module if a variable
// named OtherImmunes is existing and calculates a new value which
// will replace the old

%mod = 'PLACE_YOUR_FILE_HERE.mod' or die$!;

for ('*.utc' in %mod) {

  for (/VarTable) {

    if (/~/Name eq "OtherImmunes") {
      $crit = int(/~/Value / 10000) % 10;

      if (!($crit & 2)) {
        print /TemplateResRef, ";", /~/Value, ";\n";
      }
    }
    else {
      print "no such file found;\n";
    }
  }
}
