// Script provided from FunkySwerve, HigherGround
// Changed to syntax version 4.0.6.27rc3, dunahan@schwerterkueste.de

%uti = 'PLACE_YOUR_FILE_HERE.uti' or die$!;

for (/PropertiesList) {
  print /~/PropertyName;
  print ",";
  print /~/Subtype;
  print ",";
  print /~/CostValue;
  print ",";
  print /~/Param1Value;
  print "\n";
}
