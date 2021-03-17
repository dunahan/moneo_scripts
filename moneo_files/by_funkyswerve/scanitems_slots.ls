%mod = 'Path of Ascension CEP Legends.mod';

for (%mod['*.uti']) {
  $beh = 0;
  for (/PropertiesList) {
    if (/~/PropertyName == 13) {
      $beh = 1;
    }
  }
  if ($beh > 0 && 
  	substr(/TemplateResRef, 0, 7) ne "hellset" &&
    substr(/TemplateResRef, 0, 6) ne "abyset" &&
    substr(/TemplateResRef, 0, 6) ne "elyset" &&
    substr(/TemplateResRef, 0, 6) ne "aboset" &&
    substr(/TemplateResRef, 0, 5) ne "tiam_") {
    print /TemplateResRef, "--------\n", /DescIdentified, "\n\n";
  }  
}