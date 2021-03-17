// Script provided from FunkySwerve, HigherGround
// Changed to syntax version 4.0.6.27rc3, dunahan@schwerterkueste.de

// Scans for every creature-file in the specified module if the variable
// OtherImmunes exists. Then changes the value to another and writes it
// to the creature.

%mod = 'PLACE_YOUR_FILE_HERE.mod' or die$!;

for ('*.utc' in %mod) {
  for (/VarTable) {
    if (/~/Name eq "OtherImmunes") {
      $crit = int(/~/Value / 10000) % 10;
      $abil = int(/~/Value / 100000000) % 10;
      if (($crit & 1) && !($crit & 4) && ($abil == 1 || $abil == 3 || $abil == 4 || $abil == 7 || $abil == 8)) {
        print /TemplateResRef, ";", /~/Value;
        /~/Value += 40000;
        print ";", /~/Value, ";\n";
      }

    }
  }

}

%mod = '>';
%close(%mod);
