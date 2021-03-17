%git = 'temp0/canopy4.git';

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
