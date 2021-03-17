%mod = 'Path of Ascension CEP Legends.mod';

for (%mod['*.utc']) {
	$val = ""; for (/VarTable) { $val = /~/Value if /~/Name eq 'SR'; } 
	print /TemplateResRef, "	", /FirstName, "	", /LastName, "	", $val, "\n";
}					      	