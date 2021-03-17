// Script provided from FunkySwerve, HigherGround
// Changed to syntax version 4.0.6.27rc3, dunahan@schwerterkueste.de

%git = 'PLACE_YOUR_FILE_HERE.git' or die$!;



for (/{'Placeable List'}) {
  if (/~/Static == 1) {
    /~/Static = 0;
    /~/Plot   = 1;
    /~/Fort   = 100;
    print /~/Tag, "\n";

  }

}



%git = '>';

%close(%git);
