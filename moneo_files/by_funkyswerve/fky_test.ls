%mod = 'Path of Ascension CEP Legends.mod';

for (%mod['*.utc']) {
	$str = /Str;
	$dex = /Dex;
	if ((($dex > $str) || (($str-$dex) < 11)) && (/FactionID == 13)) {
		print /TemplateResRef, "	",/Firstname, "	", /Str, "	", /Dex, "\n";
	}
}