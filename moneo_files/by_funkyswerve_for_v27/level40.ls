// Script provided from FunkySwerve, HigherGround
// Changed to syntax version 4.0.6.27rc3, dunahan@schwerterkueste.de

%mod = 'PLACE_YOUR_FILE_HERE.mod' or die$!;

for ('*.utc' in %mod) {
  $total = 0;
  $total += /~/ClassLevel for /ClassList;

  print "/TemplateResRef $total\n" if $total == 40;
  # /ClassList/[0]/ClassLevel += 1 if $total == 40;

}



%mod = '>';

close %mod;

