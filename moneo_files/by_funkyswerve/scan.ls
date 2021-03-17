%mod = 'Path of Ascension CEP Legends.mod';

for (%mod['myc_*.utc']) {
	print /TemplateResRef, "&&&", /FirstName, " ", /LastName, "\n\n";
}
