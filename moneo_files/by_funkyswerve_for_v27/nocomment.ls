// Script provided from FunkySwerve, HigherGround
// Changed to syntax version 4.0.6.27rc3, dunahan@schwerterkueste.de

// Deletes for every creature-file in the specified module all comments

%mod = 'PLACE_YOUR_FILE_HERE.mod' or die$!;

for ('*.utc' in %mod) {
  /Comment = '';
}

%mod = '>';
close(%mod);
