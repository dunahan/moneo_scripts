%mod = 'mod.erf' or die$!;

for ('*.are' in %mod) {
  $are = substr($_, 0, -4);
  print $are, "|", /Tag, "|", /Name, "|", /ResRef, "|\n";
}

close %mod;
