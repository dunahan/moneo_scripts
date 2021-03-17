// Script provided from FunkySwerve, HigherGround
// Changed to syntax version 4.0.6.27rc3, dunahan@schwerterkueste.de

// Deletes in the specified creature-file the feat number 883 and 885.

%utc = 'PLACE_YOUR_FILE_HERE.utc' or die$!;

  replace 'Feat', 883, DeleteParent;
  replace 'Feat', 885, DeleteParent;

%utc = '>';
close(%utc);
