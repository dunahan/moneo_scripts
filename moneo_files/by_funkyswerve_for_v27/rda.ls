// Script provided from FunkySwerve, HigherGround
// Changed to syntax version 4.0.6.27rc3, dunahan@schwerterkueste.de

// Scans every item-file in a specified module for some values in
// BaseItem and ModelPart1. If all are found, it prints the ResRef
// and ModelPart1. Or that no such file exists

%mod = 'PLACE_YOUR_FILE_HERE.mod' or die$!;

for ('*.uti' in %mod) {
  if (/BaseItem == 52) {
    if (/ModelPart1 == 129 || /ModelPart1 == 185 ||
	/ModelPart1 == 139 || /ModelPart1 == 122 ||
	/ModelPart1 == 128 || /ModelPart1 == 140 ||
	/ModelPart1 == 181 || /ModelPart1 == 183 ||
	/ModelPart1 == 127 || /ModelPart1 == 126 ||
	/ModelPart1 == 182 || /ModelPart1 == 184 ||
	/ModelPart1 == 125 || /ModelPart1 == 124 ||
	/ModelPart1 == 123 || /ModelPart1 == 141 ||
	/ModelPart1 == 138 || /ModelPart1 == 130) {
      print /TemplateResRef, " ", /ModelPart1, "\n";
    }

  }
  else {
    print "no such file found;";
  }
}