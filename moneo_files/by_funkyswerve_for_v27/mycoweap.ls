// Script provided from FunkySwerve, HigherGround
// Changed to syntax version 4.0.6.27rc3, dunahan@schwerterkueste.de

%mod = 'PLACE_YOUR_FILE_HERE.mod' or die$!;

for ('mycsetweap*.uti' in %mod) {
  if (/BaseItem != 6 && /BaseItem != 7 && /BaseItem != 8 && /BaseItem != 11 && /BaseItem != 61 &&
      /BaseItem != 20 && /BaseItem != 25 && /BaseItem != 27 && /BaseItem != 36) {
    Delete /PropertiesList;
    add /PropertiesList, type => gffList;
    add /VarTable, type => gffList unless /VarTable;

    /DescIdentified = "-----\x0aThis weapon inflicts 6d12 acid damage on hit.\x0a-----\x0aThe radiations of Mycetaea have worked their way into this item, and reject being used by anyone who has not melded with the essence of King Myxo Dreamcaller.";
    # acid megadamage (6d12)

    add /PropertiesList/PropertyName, type => gffWord, value => 208;
    add /PropertiesList/[_]/Subtype, type => gffWord, value => 6;
    add /PropertiesList/[_]/CostTable, type => gffByte, value => 4;
    add /PropertiesList/[_]/CostValue, type => gffWord, value => 81;
    add /PropertiesList/[_]/Param1, type => gffByte, value => 255;
    add /PropertiesList/[_]/Param1Value, type => gffByte, value => 0;
    add /PropertiesList/[_]/ChanceAppear, type => gffByte, value => 100;

    # magical damage (2d8)
    add /PropertiesList/PropertyName, type => gffWord, value => 16;
    add /PropertiesList/[_]/Subtype, type => gffWord, value => 5;
    add /PropertiesList/[_]/CostTable, type => gffByte, value => 4;
    add /PropertiesList/[_]/CostValue, type => gffWord, value => 11;
    add /PropertiesList/[_]/Param1, type => gffByte, value => 255;
    add /PropertiesList/[_]/Param1Value, type => gffByte, value => 0;
    add /PropertiesList/[_]/ChanceAppear, type => gffByte, value => 100;

    # +11 enhancement bonus
    add /PropertiesList/PropertyName, type => gffWord, value => 6;
    add /PropertiesList/[_]/Subtype, type => gffWord, value => 0;
    add /PropertiesList/[_]/CostTable, type => gffByte, value => 2;
    add /PropertiesList/[_]/CostValue, type => gffWord, value => 11;
    add /PropertiesList/[_]/Param1, type => gffByte, value => 255;
    add /PropertiesList/[_]/Param1Value,  type => gffByte, value => 0;
    add /PropertiesList/[_]/ChanceAppear, type => gffByte, value => 100;

    # keen
    add /PropertiesList/PropertyName, type => gffWord, value => 43;
    add /PropertiesList/[_]/Subtype, type => gffWord, value => 0;
    add /PropertiesList/[_]/CostTable, type => gffByte, value => 0;
    add /PropertiesList/[_]/CostValue, type => gffWord, value => 0;
    add /PropertiesList/[_]/Param1, type => gffByte, value => 255;
    add /PropertiesList/[_]/Param1Value, type => gffByte, value => 0;
    add /PropertiesList/[_]/ChanceAppear, type => gffByte, value => 100;



    # visual effect acid
    add /PropertiesList/PropertyName, type => gffWord, value => 83;
    add /PropertiesList/[_]/Subtype, type => gffWord, value => 0;
    add /PropertiesList/[_]/CostTable, type => gffByte, value => 0;
    add /PropertiesList/[_]/CostValue, type => gffWord, value => 0;
    add /PropertiesList/[_]/Param1, type => gffByte, value => 255;
    add /PropertiesList/[_]/Param1Value, type => gffByte, value => 0;
    add /PropertiesList/[_]/ChanceAppear, type => gffByte, value => 100;
  }

}


%mod = '>';

close(%mod);
