%mod = 'Path of Ascension CEP Legends.mod';

for (%mod['*.utc']) {
  print /TemplateResRef, "	",/Firstname, "xxxxAC: ", /NaturalAC, "xxxxStr: ", /Str, "xxxxDex: ", /Dex, "xxxxFort: ", /fortbonus, "xxxxRef: ", /refbonus, "xxxxWill: ", /willbonus, "xxxxCR: ", /ChallengeRating, "xxxxDis: ", /SkillList/[1]/Rank, "xxxxPar:", /SkillList/[10]/Rank, "xxxx";
	$skill = 0;
	$save = 0;
	for (/VarTable) {
    if (/~/Name eq "Skill") {
      $dis = /~/Value % 10;
      $par = int(/~/Value / 100) % 10;
      $skill = 1;
      print "Skill: ",/~/Value, "xxxxvardis: ", $dis, "xxxxvarpar: ", $par;
    }
    if (/~/Name eq "Saves") {
    	$save = /~/Value;
    }
  }
  if ($skill == 0) {
  	print "NULLxxxxvardis: 0", "xxxxvarpar: 0";
  }
  if ($save == 0) {
  	print "xxxxFact: ",/FactionID, "\n";
  } else {
  	print "xxxxFact: ",/FactionID,"xxxxSave var: ", $save, "\n";
  }
}