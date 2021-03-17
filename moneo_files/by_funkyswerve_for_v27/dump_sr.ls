// Script provided by FunkySwerve, HigherGround
// Changed to syntax version 4.0.6.27rc3, dunahan@schwerterkueste.de

// Prints resref, name and value of a variable called SR from every 
// creature-file of the module, if it's available.

%mod = 'PLACE_YOUR_FILE_HERE.mod' or die$!;

for ('*.utc' in %mod) {
  $val = "";
    for (/VarTable) {
      $val = /~/Value if /~/Name eq 'SR';
    } 
  print /TemplateResRef, ";", /FirstName, ";", /LastName, ";", $val, ";\n";
}

close %mod;