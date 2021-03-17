// Script provided from FunkySwerve, HigherGround
// Changed to syntax version 4.0.6.27rc3, dunahan@schwerterkueste.de

%mod = 'PLACE_YOUR_FILE_HERE.mod' or die$!;



for ('*.git' in %mod) {

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
