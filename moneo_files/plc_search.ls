%mod = 'mod.erf' or die$!;

# Loop over all the GIT resources in %mod:
for ('*.git' in %mod) {
  # $_ is the name of the current resource
  pl "Checking area $_";
  
  # Scan the Placeabel List for a placeable with the given resref
  for (/{'Placeable List'}) {
    pl 'Area Designator found!' if /~/TemplateResRef eq 'area_designat004';
  }
}

close %mod;
