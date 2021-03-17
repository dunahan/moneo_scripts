%mod = 'Path of Ascension CEP Legends.mod';

for (%mod['ele_earth_*.git']) {
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
