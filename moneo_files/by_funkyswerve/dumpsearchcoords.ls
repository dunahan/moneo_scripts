%mod = 'Path of Ascension CEP Legends.mod';

for (%mod['*.git']) {

    for (/{'TriggerList'}) {
      if (/~/ScriptOnEnter eq 'ac_search') {
        for (/~/VarTable) {
			if (/~/Name eq 'Search_Place_Loc_Enter') {
				print /~/Name, "	", /~/Value, "\n";
			}	
			if (/~/Name eq 'Search_Place_Loc_Exit') {
				print /~/Name, "	", /~/Value, "\n";
			}
			if (/~/Name eq 'Search_Skill') {
				print /~/Name, "	", /~/Value, "\n";
			}					
          }
          print "********\n";	
        }
      }
}
