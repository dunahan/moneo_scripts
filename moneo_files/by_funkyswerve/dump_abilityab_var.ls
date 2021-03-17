%mod = 'Path of Ascension CEP Legends.mod';

for (%mod['*.utc']) {
	$val = 0; 
	for (/VarTable) { $val = /~/Value if /~/Name eq 'AbilityAB'; } 
	if ($val > 0) {print /TemplateResRef, "	", /FirstName, "	", /LastName, "	", $val, "\n";}	
}					      	