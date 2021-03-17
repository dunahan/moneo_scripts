// Script provided by FunkySwerve, HigherGround
// Changed to syntax version 4.0.6.27rc3, dunahan@schwerterkueste.de
// Added logging for debug

// Adds a integer variable named "ITR" with a value of 4194304
// to a or more item-files in the module with the prefix
// 'locset'.
// Prints the result at the end of the script to a logfile.

%mod = 'PLACE_YOUR_FILE_HERE.mod' or die$!;
$debug = 'yes';

for ('locset*.uti' in %mod) {
  add /VarTable, type => gffList unless /VarTable;
  add /VarTable/Name, type => gffString, value => "ITR";
  add /VarTable/[_]/Type, type => gffDword, value => 1;
  add /VarTable/[_]/Value, type => gffInt, value => 4194304;

}

if ($debug eq 'yes') {
  print "Name;ResRef;\n";
  print /LocalizedName, ";", /TemplateResRef, ";\n";
  print "Variable;Value;\n";

  for (/VarTable) {
    if (/~/Name eq 'ITR') {
      print /~/Name, ";";
      print /~/Value, ";\n";
    }
  } 
}

%mod = '>';
close %mod;