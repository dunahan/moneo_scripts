// Script provided from FunkySwerve, HigherGround
// Changed to syntax version 4.0.6.27rc3, dunahan@schwerterkueste.de

%mod = 'PLACE_YOUR_FILE_HERE.mod' or die$!;


for ('*.uti' in %mod) {
  if (/StackSize > 10) {
    for (/PropertiesList) {
      if (/~/PropertyName == 82 && /~/Subtype == 125) {
        /~/Subtype = 135;
        print /TemplateResRef, ";", /StackSize, ";\n";
      }
    }
  }

}



%mod = '>';

close(%mod);
