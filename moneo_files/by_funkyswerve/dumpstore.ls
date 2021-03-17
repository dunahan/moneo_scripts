%uti = 'temp0/yevonsbrainfr.uti';

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
