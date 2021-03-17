%utc = 'temp0/h_whiteabishai.utc';
add /VarTable, type => gffList unless /VarTable;
add /VarTable/Name, type => gffString, value => "ItemProperties_Mask";
add /VarTable/[_]/Type, type => gffDword, value => 1;
add /VarTable/[_]/Value, type => gffInt, value => 16;
%utc = '>'; close(%utc);
