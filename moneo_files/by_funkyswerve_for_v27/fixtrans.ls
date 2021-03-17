// Script provided from FunkySwerve, HigherGround
// Changed to syntax version 4.0.6.27rc3, dunahan@schwerterkueste.de

%mod = 'PLACE_YOUR_FILE_HERE.mod' or die$!;

for ('ele_earth_*.git' in %mod) {
  for (/{'TriggerList'}) {
    if (/~/TemplateResRef eq 'newtransition') {
      /~/OnClick = 'hg_area_trans';

      add /~/VarTable, type => gffList unless /~/VarTable;
      add /~/VarTable/Name, type => gffString, value => "CheckEnv";
      add /~/VarTable/[_]/Type, type => gffDword, value => 1;
      add /~/VarTable/[_]/Value, type => gffInt, value => 3;
    }
  }

}



%mod = '>';

close(%mod);
