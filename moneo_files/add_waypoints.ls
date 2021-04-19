%mod = 'mod.erf' or die$!;

# open one special git in %mod:
for ('_start_.git' in %mod) {
  # $_ is the name of the current resource
  $are = substr($_, 0, -4);
  
  # Scan the WaypointList and print them
  for (/{'WaypointList'}) {
    print $are, ";", /~/Tag, ";", /~/TemplateResRef, ";", /~/LocalizedName, "\n";
  }
  print "\n";
  
  # add five Waypoints to WaypointList
  $c = 0;
  while ($c ne 4) {
    add /WaypointList, type => gffList unless /WaypointList;
    add /WaypointList/, type => gffStruct;
    add /WaypointList/[_]/Appearance, type => gffByte, value => $c;
    add /WaypointList/[_]/Description, type => gffString, value => "Test";
    add /WaypointList/[_]/HasMapNote, type => gffByte, value => "0";
    add /WaypointList/[_]/LinkedTo, type => gffString, value => "";
    add /WaypointList/[_]/LocalizedName, type => gffLocString, value => "Test";
    add /WaypointList/[_]/MapNote, type => gffLocString, value => "Test";
    add /WaypointList/[_]/MapNoteEnabled, type => gffByte, value => "0";
    add /WaypointList/[_]/Tag, type => gffString, value => "TEST";
    add /WaypointList/[_]/TemplateResRef, type => gffResRef, value => "test";
    add /WaypointList/[_]/XOrientation, type => gffFloat, value => 0.000;
    add /WaypointList/[_]/XPosition, type => gffFloat, value => 12.000;
    add /WaypointList/[_]/YOrientation, type => gffFloat, value => -1.000;
    add /WaypointList/[_]/YPosition, type => gffFloat, value => 12.000;
    add /WaypointList/[_]/ZPosition, type => gffFloat, value => 0.000;
    
    $c++;
  }
  
  # Scan the WaypointList again, to see if the added Waypoints are successfully added
  for (/{'WaypointList'}) {
    print $are, ";", /~/Tag, ";", /~/TemplateResRef, ";", /~/LocalizedName, "\n";
  }
}

%mod = '>';
close %mod;
