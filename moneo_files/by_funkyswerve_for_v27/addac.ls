// Script provided by FunkySwerve, HigherGround
// Changed to syntax version 4.0.6.27rc3, dunahan@schwerterkueste.de
// Added logging for debug

// Adds a integer variable named "ItemProperties_Mask" with a value of 16
// to a specified creature-file.
// Prints the result at the end of the script to a logfile.

/*
Use of add($WhereToAdd, $ValueToAdd, $TypeToAdd)
Adds to $WhereToAdd the Value $ValueToAdd with the Type $TypeToAdd.
$ValueToAdd and $TypeToAdd are undefined, so they can be listed in
the function in a random order.
But it had been proofed that the following order is best readable:
add $WhereToAdd, $TypeToAdd, $ValueToAdd

Has the subflags /copyfrom, $lang, $setifexists, which I hadn't
used till jet.
*/

%utc = 'PLACE_YOUR_FILE_HERE.utc' or die$!;
$debug = 'yes';

add /VarTable, type => gffList unless /VarTable;
add /VarTable/Name, type => gffString, value => "ItemProperties_Mask";
add /VarTable/[_]/Type, type => gffDword, value => 1;
add /VarTable/[_]/Value, type => gffInt, value => 16;

if ($debug eq 'yes') {
  print "Name;ResRef;\n";
  print /FirstName, ";", /TemplateResRef, ";\n";
  print "Variable;Value;\n";

  for (/VarTable) {
    if (/~/Name eq 'ItemProperties_Mask') {
      print /~/Name, ";";
      print /~/Value, ";\n";
    }
  } 
}

%utc = '>';
close %utc;
