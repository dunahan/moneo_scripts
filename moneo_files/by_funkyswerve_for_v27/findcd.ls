// Script provided from FunkySwerve, HigherGround
// Changed to syntax version 4.0.6.27rc3, dunahan@schwerterkueste.de

%mod = 'PLACE_YOUR_FILE_HERE.mod' or die$!;

for ('*.utc' in %mod) {
  if (/ScriptSpawn eq 'fky_ai_9spawn') {
    $sk = 0;
    for (/VarTable) {
      if (/~/Name eq 'Skill') {
        $sk = /~/Value;
      }
    }
    $conc = /SkillList/[1]/Rank;
    $disc = /SkillList/[3]/Rank;
    print /TemplateResRef, "\t", /FirstName, " ", /LastName, "\t", $conc, "\t", $disc, "\t", $sk, "\t", /Str, "\t", /Con, "\n";
  }
}
