// Script provided by FunkySwerve, HigherGround
// Changed to syntax version 4.0.6.27rc3, dunahan@schwerterkueste.de

// Prints the experience of a specified saved player file.

%bic = 'PLACE_YOUR_FILE_HERE.bic' or die$!;

for (%bic) {
  print /Experience, "\n";
}