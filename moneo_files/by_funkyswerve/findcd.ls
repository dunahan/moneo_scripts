%mod = 'Path of Ascension CEP Legends.mod';

for (%mod['*.utc']) {
  if (/ScriptSpawn eq 'fky_ai_9spawn') {
    $sk = 0;
    for (/VarTable) {
      if (/~/Name eq 'Skill') {
        $sk = /~/Value;
      }
    }

    $conc = /SkillList/[1]/Rank;
    $disc = /SkillList/[3]/Rank;

    print /TemplateResRef, "\t", /FirstName, " ", /LastName, "\t",
          $conc, "\t", $disc, "\t", $sk, "\t", /Str, "\t", /Con, "\n";
  }
}
