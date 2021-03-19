%mod = 'mod.erf' or die$!;

# Loop over all the GIT resources in %mod
for ('*.git' in %mod) {
  # $_ is the name of the current resource
  pl "Checking area $_";
  
  # Scan the Placeabel List for a placeable with the given resref
  for (/{'Placeable List'}) {
    $des = /~/TemplateResRef;
    if ($des eq "area_designat004") {
      pl 'Area Designator found!';
      delete /~;                            # this deletes the struct if the right placeable is found
    }
  }
}

# save your work
%mod = '>';
# and close the erf-file
close %mod;
