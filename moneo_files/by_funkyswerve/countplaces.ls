%mod = 'Path of Ascension CEP Legends.mod';

for (%mod['*.git']) {
	$count = 0;
  for (/{'Placeable List'}) {
		$count++;
  }
  print $count, "\n";
}

for (%mod['*.are']) {
	$tiles = 0;
	for (/{'Tile_List'}) {
		$tiles++;
	}	
	print /Tag, "	", /Name, "	", /ResRef, "	", $tiles, "\n";
}

