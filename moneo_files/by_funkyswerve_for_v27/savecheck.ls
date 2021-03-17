// Script provided from FunkySwerve, HigherGround
// Changed to syntax version 4.0.6.27rc3, dunahan@schwerterkueste.de

// Scans for every creature-file in a specified module if it has a variable
// named Saves and prints this value. Then prints from this creature-file
// TemplateResRef, Firstname, Str, Dex, fortbonus, refbonus, willbonus,
// ChallengeRating, SkillList/[1]/Rank, and SkillList/[10]/Rank.

%mod = 'PLACE_YOUR_FILE_HERE.mod' or die$!;

for ('*.utc' in %mod) {
  $print = 0; 
  for (/VarTable) {
    if (/~/Name eq "Saves") {
      print /~/Value, ";";
      $print = 1;
    }
  }

  if ($print == 1) {
    print /TemplateResRef, ";",/Firstname, ";", /Str, ";", /Dex, ";", /fortbonus, ";", /refbonus, ";", /willbonus, ";", /ChallengeRating, ";", /SkillList/[1]/Rank, ";", /SkillList/[10]/Rank, ";\n";
  }
}

close %mod;