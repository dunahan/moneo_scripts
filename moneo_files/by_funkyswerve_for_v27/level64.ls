// Script provided from FunkySwerve, HigherGround
// Changed to syntax version 4.0.6.27rc3, dunahan@schwerterkueste.de

// Prints for every creature-file in the specified module the ResRef
// and all counted classes of ClassList.

%mod = 'PLACE_YOUR_FILE_HERE.mod' or die$!;

for ('*.utc' in %mod) {
  $total = 0;
  $total += /~/ClassLevel for /ClassList;

  print "/TemplateResRef $total\n" if $total == 66;
  # /ClassList/[0]/ClassLevel += 1 if $total == 66;
}

%mod = '>';
close %mod;
