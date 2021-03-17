%mod = 'Path of Ascension CEP Legends.mod';

for (%mod['*.utc']) {
  for (/VarTable) {
    if (/~/Name eq "SpellVulnerability") {
      $val = /~/Value;
      /~/Name  = "SpellVulnerability_$val";
      /~/Value = 1;
    }
  }
}

%mod = '>';
close(%mod);
