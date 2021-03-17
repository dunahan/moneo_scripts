// Script provided from FunkySwerve, HigherGround
// Changed to syntax version 4.0.6.27rc3, dunahan@schwerterkueste.de

// Scans every item-file PropertyList for a specified PropertyName and
// set the value true, if it has this property. Then scans this item
// for some more values in the ResRef of the item. If all is set to true
// it prints the identified description.

%mod = 'PLACE_YOUR_FILE_HERE.mod' or die$!;

for ('*.uti' in %mod) {
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