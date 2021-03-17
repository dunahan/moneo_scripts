// Script provided by FunkySwerve, HigherGround
// Changed to syntax version 4.0.6.27rc3, dunahan@schwerterkueste.de

// Prints for every creature-file in the module resref and name, if a
// integer named "AbilityAB" is existing.

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