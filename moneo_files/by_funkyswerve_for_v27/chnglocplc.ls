$nbr = '233';           // The value for the placeable, when more then one placeable with the same tag exist
$tag = 'ZEP_SKINPOLE001'; // The tag to search for
$zcrd = '0,37';       // The value for the coordinate to exchange
$save = 'yes';         // Set to yes, if you want to save the changes

%mod = 'www_schwerterkueste_de.mod' or die$!;

for ('gebiet002.git' in %mod) {
  $count = 0;

  for (/{'Placeable List'}) {
    $count++;
	
    if ($count > 0) {
      if (/~/Tag eq $tag) {
        if($count eq $nbr) {
          print /~/Tag;
          print "\n";		  
		  print /~/Z;
		  /~/Z = $zcrd;
          print "\n";		  
	      print /~/Z;		  
        }
      }
    }	
  }
}

if ($save eq 'yes') {
  %mod = '>';
}

close %mod;