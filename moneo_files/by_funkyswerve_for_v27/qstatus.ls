// Script provided from FunkySwerve, HigherGround
// Changed to syntax version 4.0.6.27rc3, dunahan@schwerterkueste.de

// Prints for every creature-file in the specified module the ResRef
// and the value of the variable QSDeathTag if this exists on the
// scanned creature

%mod = 'PLACE_YOUR_FILE_HERE.mod' or die$!;

for ('*.utc' in %mod) {
  for (/VarTable) {

    if (/~/Name eq "QSDeathTag") {
      print /TemplateResRef, ";", /~/Value, ";\n";
    }

  }
}
