// Script provided from FunkySwerve, HigherGround
// Changed to syntax version 4.0.6.27rc3, dunahan@schwerterkueste.de

%pal = 'PLACE_YOUR_FILE_HERE.itp.gff' or die$!;

for (/MAIN) {
  $pre1 = /~/DELETE_ME;
  for (/~/LIST) {
    if (/~/ID < 100) { print " "; }
    if (/~/ID < 10)  { print " "; }

    print /~/ID, " ", $pre1, " | ", /~/DELETE_ME, " (", /~/STRREF, ")\n";
    $pre2 = /~/DELETE_ME;

    for (/~/LIST) {
      if (/~/ID < 100) { print " "; }
      if (/~/ID < 10)  { print " "; }

      print /~/ID, " ", $pre1, " | ", $pre2, " | ", /~/DELETE_ME, " (", /~/STRREF, ")\n";
      $pre3 = /~/DELETE_ME;

      for (/~/LIST) {
        if (/~/ID < 100) { print " "; }
        if (/~/ID < 10)  { print " "; }

        print /~/ID, " ", $pre1, " | ", $pre2, " | ", $pre3, " | ", /~/DELETE_ME, " (", /~/STRREF, ")\n";
      }
    }
  }
}
