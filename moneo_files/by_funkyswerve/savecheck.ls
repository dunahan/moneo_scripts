%mod = 'Path of Ascension CEP Legends.mod';

for (%mod['*.utc']) {
	$print = 0; 
	for (/VarTable) {
    if (/~/Name eq "Saves") {
      print /~/Value, "	"; 
      $print = 1;  
    }
  }

  if ($print == 1) {
  	  print /TemplateResRef, "	",/Firstname, "	", /Str, "	", /Dex, "	", /fortbonus, "	", /refbonus, "	", /willbonus, "	", /ChallengeRating, "	", /SkillList/[1]/Rank, "	", /SkillList/[10]/Rank, "	\n";
  }
} 