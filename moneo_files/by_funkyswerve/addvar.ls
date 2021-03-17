%mod = 'Path of Ascension CEP Legends.mod';

for (%mod['locset*.uti']) {
  add /VarTable, type => gffList unless /VarTable;
  add /VarTable/Name, type => gffString, value => "ITR";
  add /VarTable/[_]/Type, type => gffDword, value => 1;
  add /VarTable/[_]/Value, type => gffInt, value => 4194304;
}

%mod = '>';
close(%mod);
