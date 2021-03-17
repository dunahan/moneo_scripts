%mod = 'Path of Ascension CEP Legends.mod';

for (%mod['hiv_*.utc']) {
  add /VarTable, type => gffList unless /VarTable;
  add /VarTable/Name, type => gffString, value => "Saves";
  add /VarTable/[_]/Type, type => gffDword, value => 1;
  add /VarTable/[_]/Value, type => gffInt, value => 4000000;
}

%mod = '>';
close(%mod);
