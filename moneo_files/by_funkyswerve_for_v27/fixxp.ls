// Script provided from FunkySwerve, HigherGround
// Changed to syntax version 4.0.6.27rc3, dunahan@schwerterkueste.de

%mod = 'PLACE_YOUR_FILE_HERE.mod' or die$!;

for ('*.git' in %mod) {
  for (/VarTable) {
    # if (/~/Name eq 'XPMult') {
    #   /~/Name  = 'XPAdjustment';

    #   /~/Value = (/~/Value - 4.0) / 10.0;
    #
      }

    if (/~/Name eq 'XPAdjustment') {
      print /TemplateResRef, ";", /~/Value, ";\n";
    }
  }

}



# %mod = '>';

# close(%mod);
