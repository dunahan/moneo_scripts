%mod = 'Path of Ascension CEP Legends.mod';

for (%mod['*.git']) {
  for (/{'Placeable List'}) {
    if (/~/Static > 0) {
      $name = /~/Appearance;

      if ($name < 10) {
        $name = "ZZ_0000" + $name;
      } elsif ($name < 100) {
        $name = "ZZ_000" + $name;
      } elsif ($name < 1000) {
        $name = "ZZ_00" + $name;
      } elsif ($name < 10000) {
        $name = "ZZ_0" + $name;
      } else {
        $name = "ZZ_" + $name;
      }

      /~/LocName = $name;
      /~/PortraitId = 515;
    }
  }
}

%mod = '>';
close(%mod);
