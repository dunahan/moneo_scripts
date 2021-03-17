%mod = 'Path of Ascension CEP Legends.mod';

for (%mod['ka_*.uti']) {
	print /TemplateResRef, "	", /LocalizedName, "\n";
}
