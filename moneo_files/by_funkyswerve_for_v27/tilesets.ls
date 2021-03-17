// Syntax Moneo Version 2.7
// Prints for all areas or area's with a specified tileset
// Thx to Proleric for sharing the usage of $_ as the filename!
// dunahan@schwerterkueste.de

%mod = 'zauberwald.mod' or die$!;
$searchfor = '';
print "Name;File;Tag;UsedTile;\n";

for ('*.are' in %mod) {
  $are = substr($_, 0, -4);
  $tileset = /~/Tileset;
  $area = $are;

  if ($searchfor ne '') {  // if only one specified tileset wanted
    if ($tileset ne $searchfor) { // print these areas
      print /Name; print ";";
      print $area; print ";";
      print /~/Tag; print ";";
      print $tileset; print ";\n";
    }
  }
  else { // else print every area
    print /Name; print ";";
    print $area; print ";";
    print /~/Tag; print ";";
    print $tileset; print ";\n";
  }
}

close %mod;