// Script provided from FunkySwerve, HigherGround
// Changed to syntax version 4.0.6.27rc3, dunahan@schwerterkueste.de

// Replaces for some specified item-files different values in their
// PaletteID

%mod = 'PLACE_YOUR_FILE_HERE.mod' or die$!;

for ('uaq*.uti' in %mod) {
  replace('PaletteID', '23', '228');
}

for ('es_*.uti' in %mod) {
  replace('PaletteID', '2', '241');
}

for ('qc_*.uti' in %mod) {
  replace('PaletteID', '2', '242');
}

for ('*.uti' in %mod) {
  replace('PaletteID', '0', '185');
  replace('PaletteID', '2', '233');
  replace('PaletteID', '3', '186');
  replace('PaletteID', '24', '238');
}

for ('it_mpot*.uti' in %mod) {
  replace('PaletteID', '238', '24');
}


for ('rand00*.uti' in %mod) { replace('PaletteID', '1', '196'); }
for ('rand01*.uti' in %mod) { replace('PaletteID', '1', '190'); }
for ('rand02*.uti' in %mod) { replace('PaletteID', '1', '192'); }
for ('rand03*.uti' in %mod) { replace('PaletteID', '1', '193'); }
for ('randck*.uti' in %mod) { replace('PaletteID', '1', '194'); }
for ('randam*.uti' in %mod) { replace('PaletteID', '1', '189'); }
for ('randrg*.uti' in %mod) { replace('PaletteID', '1', '198'); }
for ('randsh*.uti' in %mod) { replace('PaletteID', '1', '199'); }
for ('randbl*.uti' in %mod) { replace('PaletteID', '1', '191'); }
for ('randwp*.uti' in %mod) { replace('PaletteID', '1', '200'); }
for ('randtr*.uti' in %mod) { replace('PaletteID', '1', '197'); }
for ('rand*.uti' in %mod) { replace('PaletteID', '1', '188'); }


%mod = '>';
close %mod;

