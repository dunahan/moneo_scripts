// Script provided from FunkySwerve, HigherGround
// Changed to syntax version 4.0.6.27rc3, dunahan@schwerterkueste.de

%mod = 'PLACE_YOUR_FILE_HERE.mod' or die$!;

for ('*.utc' in %mod) {
  print /TemplateResRef, ";",/Firstname, " AC: ", /NaturalAC, " Str: ", /Str, " Dex: ", /Dex, " Fort: ", /fortbonus, " Ref: ", /refbonus, " Will: ", /willbonus, " CR: ", /ChallengeRating, " Dis: ", /SkillList/[1]/Rank, " Par:", /SkillList/[10]/Rank, " ";
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