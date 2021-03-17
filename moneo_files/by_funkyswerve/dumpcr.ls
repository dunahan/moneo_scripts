%mod = 'Path of Ascension CEP Legends.mod';

for (%mod['*.utc']) {
  print /TemplateResRef, "	", /ChallengeRating, "	", /FirstName, "	",/Race, "\n";
}
