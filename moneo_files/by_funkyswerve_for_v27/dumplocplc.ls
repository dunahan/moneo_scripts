// Prints for every placeable in every GIT-file the locations

%mod = 'PLACE_YOUR_MOD_HERE' or die$!;

for ('*.git' in %mod) {
  $nbr = 0;
  $count = 0;

  for (/{'Placeable List'}) {
    $nbr++;
    $count++;
	
    if ($count > 0) {
	  print $nbr, ";";
      print $count, ";";
      print /~/Tag;
      print ";";
      print /~/X;
      print ";";
      print /~/Y;
      print ";";
      print /~/Z;
      print ";";
      print /~/Bearing;
      print ";";
    }	

    print "\n";	  
  }
}

close %mod;