%uti = 'temp0/zorbgotskin.uti';

if (/PaletteID == 13 || /PaletteID == 14 || /PaletteID == 63 ||
    /PaletteID == 55 || /PaletteID == 56 || /PaletteID == 58 || /PaletteID == 59 ||
    (/PaletteID >= 160 && /PaletteID <= 179)) {
  print "skipping already creature item ", /TemplateResRef, "\n";
} elsif (/PaletteID >= 130 && /PaletteID <= 139) {
  print "skipping store item ", /TemplateResRef, "\n";
} elsif (/BaseItem == 49 || /BaseItem == 101 || /BaseItem == 104) {
  print "skipping potion ", /TemplateResRef, "\n";
} elsif (/BaseItem == 75 || /BaseItem == 102 || /BaseItem == 105) {
  print "skipping scroll ", /TemplateResRef, "\n";
} elsif (/BaseItem == 44 || /BaseItem == 46) {
  print "skipping wand/rod ", /TemplateResRef, "\n";
} elsif (/BaseItem == 76) {
  print "skipping gold ", /TemplateResRef, "\n";
} elsif (/BaseItem == 15 || /BaseItem == 24 || /BaseItem == 29 || /BaseItem == 34 || /BaseItem == 79 || /BaseItem == 307 || /BaseItem == 311) {
  print "skipping misc ", /TemplateResRef, "\n";
} elsif (/BaseItem == 20 || /BaseItem == 25 || /BaseItem == 27) {
  print "skipping ammo ", /TemplateResRef, "\n";
} elsif (/BaseItem == 16) {
  /PaletteID = 58;
} elsif (/BaseItem == 14 || /BaseItem == 56 || /BaseItem == 57) {
  /PaletteID = 58;
} elsif (/BaseItem == 19 || /BaseItem == 52) {
  /PaletteID = 58;
} elsif (/BaseItem == 17) {
  /PaletteID = 58;
} elsif (/BaseItem == 26) {
  /PaletteID = 58;
} elsif (/BaseItem == 21 || /BaseItem == 36 || /BaseItem == 78 || /BaseItem == 80) {
  /PaletteID = 58;
} elsif (/BaseItem == 6 || /BaseItem == 7 || /BaseItem == 8 || /BaseItem == 11 || /BaseItem == 61 || /BaseItem == 59 || /BaseItem == 31 || /BaseItem == 63 || /BaseItem == 81) {
  /PaletteID = 179;
} elsif (/BaseItem == 72) {
  /PaletteID = 13;
} elsif (/BaseItem == 69) {
  /PaletteID = 55;
} elsif (/BaseItem == 70) {
  /PaletteID = 63;
} elsif (/BaseItem == 71) {
  /PaletteID = 56;
} else {
  /PaletteID = 59;
}

%uti = '>';
close(%uti);
