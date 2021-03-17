%mod = 'Path of Ascension CEP Legends.mod';

for (%mod['moadweap0*.uti']) {
  my ($abil, $dam1, $dam2, $dam3);

  for (/PropertiesList) {
    if (/~/PropertyName == 0) {
      $abil = /~/Subtype;
    } elsif (/~/PropertyName == 16 && $dam1 == 0) {
      $dam1 = /~/Subtype;
    } elsif (/~/PropertyName == 16 && $dam2 == 0) {
      $dam2 = /~/Subtype;
    } elsif (/~/PropertyName == 16 && $dam3 == 0) {
      $dam3 = /~/Subtype;
    } 
  }

  Delete /PropertiesList;
  add /PropertiesList, type => gffList;
  add /VarTable, type => gffList unless /VarTable;

  # ability increase
  add /PropertiesList/PropertyName,     type => gffWord, value => 0;
  add /PropertiesList/[_]/Subtype,      type => gffWord, value => 0;
  add /PropertiesList/[_]/CostTable,    type => gffByte, value => 1;
  add /PropertiesList/[_]/CostValue,    type => gffWord, value => 2;
  add /PropertiesList/[_]/Param1,       type => gffByte, value => 255;
  add /PropertiesList/[_]/Param1Value,  type => gffByte, value => 0;
  add /PropertiesList/[_]/ChanceAppear, type => gffByte, value => 100;
  /PropertiesList/[_]/Subtype = $abil;

  # damage type 1
  add /PropertiesList/PropertyName,     type => gffWord, value => 16;
  add /PropertiesList/[_]/Subtype,      type => gffWord, value => 0;
  add /PropertiesList/[_]/CostTable,    type => gffByte, value => 4;
  add /PropertiesList/[_]/CostValue,    type => gffWord, value => 13;
  add /PropertiesList/[_]/Param1,       type => gffByte, value => 255;
  add /PropertiesList/[_]/Param1Value,  type => gffByte, value => 0;
  add /PropertiesList/[_]/ChanceAppear, type => gffByte, value => 100;
  /PropertiesList/[_]/Subtype = $dam1;

  # damage type 2
  add /PropertiesList/PropertyName,     type => gffWord, value => 16;
  add /PropertiesList/[_]/Subtype,      type => gffWord, value => 0;
  add /PropertiesList/[_]/CostTable,    type => gffByte, value => 4;
  add /PropertiesList/[_]/CostValue,    type => gffWord, value => 13;
  add /PropertiesList/[_]/Param1,       type => gffByte, value => 255;
  add /PropertiesList/[_]/Param1Value,  type => gffByte, value => 0;
  add /PropertiesList/[_]/ChanceAppear, type => gffByte, value => 100;
  /PropertiesList/[_]/Subtype = $dam2;

  # damage type 3
  add /PropertiesList/PropertyName,     type => gffWord, value => 16;
  add /PropertiesList/[_]/Subtype,      type => gffWord, value => 0;
  add /PropertiesList/[_]/CostTable,    type => gffByte, value => 4;
  add /PropertiesList/[_]/CostValue,    type => gffWord, value => 13;
  add /PropertiesList/[_]/Param1,       type => gffByte, value => 255;
  add /PropertiesList/[_]/Param1Value,  type => gffByte, value => 0;
  add /PropertiesList/[_]/ChanceAppear, type => gffByte, value => 100;
  /PropertiesList/[_]/Subtype = $dam3;

  # enhancement bonus
  add /PropertiesList/PropertyName,     type => gffWord, value => 6;
  add /PropertiesList/[_]/Subtype,      type => gffWord, value => 0;
  add /PropertiesList/[_]/CostTable,    type => gffByte, value => 2;
  add /PropertiesList/[_]/CostValue,    type => gffWord, value => 9;
  add /PropertiesList/[_]/Param1,       type => gffByte, value => 255;
  add /PropertiesList/[_]/Param1Value,  type => gffByte, value => 0;
  add /PropertiesList/[_]/ChanceAppear, type => gffByte, value => 100;

  # keen
  add /PropertiesList/PropertyName,     type => gffWord, value => 43;
  add /PropertiesList/[_]/Subtype,      type => gffWord, value => 0;
  add /PropertiesList/[_]/CostTable,    type => gffByte, value => 0;
  add /PropertiesList/[_]/CostValue,    type => gffWord, value => 0;
  add /PropertiesList/[_]/Param1,       type => gffByte, value => 255;
  add /PropertiesList/[_]/Param1Value,  type => gffByte, value => 0;
  add /PropertiesList/[_]/ChanceAppear, type => gffByte, value => 100;

  # massive criticals
  add /PropertiesList/PropertyName,     type => gffWord, value => 74;
  add /PropertiesList/[_]/Subtype,      type => gffWord, value => 0;
  add /PropertiesList/[_]/CostTable,    type => gffByte, value => 4;
  add /PropertiesList/[_]/CostValue,    type => gffWord, value => 14;
  add /PropertiesList/[_]/Param1,       type => gffByte, value => 255;
  add /PropertiesList/[_]/Param1Value,  type => gffByte, value => 0;
  add /PropertiesList/[_]/ChanceAppear, type => gffByte, value => 100;

  # intelligent weapon
  add /PropertiesList/PropertyName,     type => gffWord, value => 82;
  add /PropertiesList/[_]/Subtype,      type => gffWord, value => 135;
  add /PropertiesList/[_]/CostTable,    type => gffByte, value => 26;
  add /PropertiesList/[_]/CostValue,    type => gffWord, value => 0;
  add /PropertiesList/[_]/Param1,       type => gffByte, value => 255;
  add /PropertiesList/[_]/Param1Value,  type => gffByte, value => 0;
  add /PropertiesList/[_]/ChanceAppear, type => gffByte, value => 100;

  # vampiric regen
  add /PropertiesList/PropertyName,     type => gffWord, value => 67;
  add /PropertiesList/[_]/Subtype,      type => gffWord, value => 0;
  add /PropertiesList/[_]/CostTable,    type => gffByte, value => 2;
  add /PropertiesList/[_]/CostValue,    type => gffWord, value => 5;
  add /PropertiesList/[_]/Param1,       type => gffByte, value => 255;
  add /PropertiesList/[_]/Param1Value,  type => gffByte, value => 0;
  add /PropertiesList/[_]/ChanceAppear, type => gffByte, value => 100;

  # visual effect holy
  add /PropertiesList/PropertyName,     type => gffWord, value => 83;
  add /PropertiesList/[_]/Subtype,      type => gffWord, value => 5;
  add /PropertiesList/[_]/CostTable,    type => gffByte, value => 0;
  add /PropertiesList/[_]/CostValue,    type => gffWord, value => 0;
  add /PropertiesList/[_]/Param1,       type => gffByte, value => 255;
  add /PropertiesList/[_]/Param1Value,  type => gffByte, value => 0;
  add /PropertiesList/[_]/ChanceAppear, type => gffByte, value => 100;

  add /VarTable/Name,      type => gffString, value => "ITR";
  add /VarTable/[_]/Type,  type => gffDword,  value => 1;
  add /VarTable/[_]/Value, type => gffInt,    value => 8;
  add /VarTable/Name,      type => gffString, value => "OnHitBreach";
  add /VarTable/[_]/Type,  type => gffDword,  value => 1;
  add /VarTable/[_]/Value, type => gffInt,    value => 2;
  add /VarTable/Name,      type => gffString, value => "Version";
  add /VarTable/[_]/Type,  type => gffDword,  value => 1;
  add /VarTable/[_]/Value, type => gffInt,    value => 2;
}
%mod = '>';
close(%mod);
