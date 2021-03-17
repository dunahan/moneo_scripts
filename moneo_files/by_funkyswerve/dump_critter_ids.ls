%mod = 'Path of Ascension CEP Legends.mod';

for (%mod['*.utc']) {
		$id = 0;
		if (/Race == 24) {
				for (/VarTable) {
						if (/~/Name eq "ID") {
					   		$id = /~/Value;
					   		print /TemplateResRef, "	", /FirstName, "	", /ChallengeRating, "	", $id, "\n";		
						}
				}							   
		}
}