%mod = 'mod.erf' or die$!;

for ('*.git' in %mod) {
  $are = substr($_, 0, -4);
  $c = 0;
  for (/{'Placeable List'}) {
    $name = /~/TemplateResRef;
    if ($name eq "area_designat004") {
      print $are, "|", $c, "\n";
    }
    $c++;
  }
}

//%mod = '>';
close %mod;
