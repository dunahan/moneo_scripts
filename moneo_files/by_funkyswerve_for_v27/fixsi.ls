// Script provided from FunkySwerve, HigherGround
// Changed to syntax version 4.0.6.27rc3, dunahan@schwerterkueste.de

%mod = 'PLACE_YOUR_FILE_HERE.mod' or die$!;

for ('*.utc' in %mod) {
  for (/VarTable) {
    if (/~/Name eq "SpellImmunes") {
      $d4 = int(/~/Value / 10000) % 10;
      $d5 = int(/~/Value / 100000) % 10;

      if ($d5 == 5) {
        /~/Value -= 500000;
        print "D5 ", /TemplateResRef, "\n";
      }

      if ($d4 != 0) {
        /~/Value -= (10000 * $d4);
        /~/Value += 100000;

        print "D4 ", /TemplateResRef, " ", /~/Value, "\n";
      }
    }
  }

}



%mod = '>';

close(%mod);
