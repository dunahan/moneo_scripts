// Script provided from FunkySwerve, HigherGround
// Changed to syntax version 4.0.6.27rc3, dunahan@schwerterkueste.de

%mod = 'PLACE_YOUR_FILE_HERE.mod' or die$!;



for ('*.utc' in %mod) {
  for (/VarTable) {
    if (/~/Name eq "MergeEndcombat") {
      print /TemplateResRef, ";", /~/Value, ";\n";

    }
  }

}
