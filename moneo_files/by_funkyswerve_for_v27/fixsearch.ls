// Script provided from FunkySwerve, HigherGround
// Changed to syntax version 4.0.6.27rc3, dunahan@schwerterkueste.de

%mod = 'PLACE_YOUR_FILE_HERE.mod' or die$!;

for ('*.git' in %mod) {
  $skip = 0;

  for (/VarTable) {
    if (/~/Name eq 'Loot') {
      if (/~/Value > 8) {
        $skip = 1;
      }
    }
  }

  if ($skip == 0) {
    for (/{'TriggerList'}) {
      if (/~/ScriptOnEnter eq 'ac_search') {
        for (/~/VarTable) {
          if (/~/Name eq 'Search_MaxLevel') {
            $skip = 1;
          }
        }

        if ($skip == 0) {
          add /~/VarTable/Name, type => gffString, value => "Search_MaxLevel";
          add /~/VarTable/[_]/Type,  type => gffDword,  value => 1;
          add /~/VarTable/[_]/Value, type => gffInt,    value => -1;
        }
      }
    }
  }

}



%mod = '>';

close(%mod);
