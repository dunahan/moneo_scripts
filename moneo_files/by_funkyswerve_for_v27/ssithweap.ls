// Script provided from FunkySwerve, HigherGround
// Changed to syntax version 4.0.6.27rc3, dunahan@schwerterkueste.de

%mod = 'PLACE_YOUR_FILE_HERE.mod' or die$!;

for ('ssith5weap*.uti' in %mod) {

  if (/BaseItem != 6 && /BaseItem != 7 && /BaseItem != 8 && /BaseItem != 11 && /BaseItem != 61 &&

      /BaseItem != 20 && /BaseItem != 25 && /BaseItem != 27 && /BaseItem != 36) {


    print /TemplateResRef, "\n";


    Delete /PropertiesList;

    add /PropertiesList, type => gffList;

    add /VarTable, type => gffList unless /VarTable;


    /DescIdentified = "-----\x0aThis weapon inflicts 6d12 electrical damage on hit.\x0a-----\x0aThis is a Ssithrak item, and is unusable to any who have not bathed in the odd energies of their planet for a number of years - or in the blood of their Goddess Ssssy'is.";



    # elec megadamage (6d12)

    add /PropertiesList/PropertyName,     type => gffWord, value => 208;

    add /PropertiesList/[_]/Subtype,      type => gffWord, value => 9;

    add /PropertiesList/[_]/CostTable,    type => gffByte, value => 4;

    add /PropertiesList/[_]/CostValue,    type => gffWord, value => 81;

    add /PropertiesList/[_]/Param1,       type => gffByte, value => 255;

    add /PropertiesList/[_]/Param1Value,  type => gffByte, value => 0;

    add /PropertiesList/[_]/ChanceAppear, type => gffByte, value => 100;



    # divine damage (2d8)

    add /PropertiesList/PropertyName,     type => gffWord, value => 16;

    add /PropertiesList/[_]/Subtype,      type => gffWord, value => 8;

    add /PropertiesList/[_]/CostTable,    type => gffByte, value => 4;

    add /PropertiesList/[_]/CostValue,    type => gffWord, value => 11;

    add /PropertiesList/[_]/Param1,       type => gffByte, value => 255;

    add /PropertiesList/[_]/Param1Value,  type => gffByte, value => 0;

    add /PropertiesList/[_]/ChanceAppear, type => gffByte, value => 100;



    # +11 enhancement bonus

    add /PropertiesList/PropertyName,     type => gffWord, value => 6;

    add /PropertiesList/[_]/Subtype,      type => gffWord, value => 0;

    add /PropertiesList/[_]/CostTable,    type => gffByte, value => 2;

    add /PropertiesList/[_]/CostValue,    type => gffWord, value => 11;

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



    # visual effect elec

    add /PropertiesList/PropertyName,     type => gffWord, value => 83;

    add /PropertiesList/[_]/Subtype,      type => gffWord, value => 2;

    add /PropertiesList/[_]/CostTable,    type => gffByte, value => 0;

    add /PropertiesList/[_]/CostValue,    type => gffWord, value => 0;

    add /PropertiesList/[_]/Param1,       type => gffByte, value => 255;

    add /PropertiesList/[_]/Param1Value,  type => gffByte, value => 0;

    add /PropertiesList/[_]/ChanceAppear, type => gffByte, value => 100;


    add /VarTable/Name,      type => gffString, value => "Version";

    add /VarTable/[_]/Type,  type => gffDword,  value => 1;

    add /VarTable/[_]/Value, type => gffInt,    value => 2;

  }

}


%mod = '>';

close(%mod);
