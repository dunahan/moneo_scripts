// Script provided from FunkySwerve, HigherGround
// Changed to syntax version 4.0.6.27rc3, dunahan@schwerterkueste.de

%mod = 'PLACE_YOUR_FILE_HERE.mod';

for ('*.git' in %mod) {
  for (/{'TriggerList'}) {
    if (/~/ScriptOnEnter eq 'ac_search') {
      for (/~/VarTable) {
        if (/~/Name eq 'Search_Place_Loc_Enter') {
          print /~/Name, ";", /~/Value, ";\n";
        }

        if (/~/Name eq 'Search_Place_Loc_Exit') {
          print /~/Name, ";", /~/Value, ";\n";
        }

        if (/~/Name eq 'Search_Skill') {
          print /~/Name, ";", /~/Value, ";\n";
        }
      }
    print "********\n";
    }
  }
}
