%uti = 'temp0/zorbgotskin.uti';

print /TemplateResRef + '|' + /LocalizedName;

for (/PropertiesList) {
  print "|";
  print /~/PropertyName;
  print ",";
  print /~/Subtype;
  print ",";
  print /~/CostValue;
  print ",";
  print /~/Param1Value;
}
print "\n";
