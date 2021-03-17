%mod = 'Path of Ascension CEP Legends.mod';

for (%mod['ely_*.utc']) {
  print "\n# ----------------------------------------------------------------------------\n";
  print "# ", /FirstName, " ", /LastName, "\n", /Description, "\n";
}
