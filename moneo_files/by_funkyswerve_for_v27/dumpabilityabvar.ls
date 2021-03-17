// Script provided by FunkySwerve, HigherGround
// Changed to syntax version 4.0.6.27rc3, dunahan@schwerterkueste.de

// Prints for every creature-file in the module resref, name and the
// value of a variable named 'AbilityAB' if it's available.

%mod = 'PLACE_YOUR_FILE_HERE.mod' or die$!;

for ('*.utc' in %mod) {
  $val = 0; 
  for (/VarTable) {
    $val = /~/Value if /~/Name eq 'AbilityAB';
  }

  if ($val > 0) {
    print /TemplateResRef, ";", /FirstName, ";", /LastName, ";", $val, ";\n";
  }	
}

close %mod;