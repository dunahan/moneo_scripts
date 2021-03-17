// Script provided by FunkySwerve, HigherGround
// Changed to syntax version 4.0.6.27rc3, dunahan@schwerterkueste.de

// Prints name and description for all creature-files with the
// prefix 'ely_'.

%mod = 'PLACE_YOUR_FILE_HERE.mod' or die$!;



for ('ely_*.utc' in %mod) {

  print "\n# ----------------------------------------------------------------------------\n";
  print "# ", /FirstName, ";", /LastName, ";\n", /Description, ";\n";

}
