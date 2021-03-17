// Script provided by FunkySwerve, HigherGround
// Changed to syntax version 4.0.6.27rc3, dunahan@schwerterkueste.de

%mod = 'PLACE_YOUR_FILE_HERE.mod' or die$!;



for ('*.uti' in %mod) {
  print /TemplateResRef, ";", /LocalizedName, ";\n";

}
