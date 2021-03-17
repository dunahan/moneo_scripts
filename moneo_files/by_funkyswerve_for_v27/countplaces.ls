// Script provided by FunkySwerve, HigherGround
// Changed to syntax version 4.0.6.27rc3, dunahan@schwerterkueste.de

// Prints for every git-file of the module the amount of placeables
// and for every are-file tag, name, resref and amount of tiles.

%mod = 'PLACE_YOUR_FILE_HERE.mod' or die$!;

for ('*.git' in %mod) {
  $count = 0;
  for (/{'Placeable List'}) {
    $count++;
  }
  print "AmountPlaceables;"
  print $count, ";\n";
}

for ('*.are' in %mod) {
  $tiles = 0;
  for (/{'Tile_List'}) {
    $tiles++;
  }
  print "Tag;Name;ResRef;", $tiles, ";\n";
  print /Tag, ";", /Name, ";", /ResRef, ";", $tiles, ";\n";
}

close %mod;