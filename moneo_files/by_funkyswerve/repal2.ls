%mod = '..\Path of Ascension CEP Legends.mod';

for (%mod['uaq*.uti']) {
  replace('PaletteID', '23', '228');
}

for (%mod['es_*.uti']) {
  replace('PaletteID', '2', '241');
}

for (%mod['qc_*.uti']) {
  replace('PaletteID', '2', '242');
}

for (%mod['*.uti']) {
  replace('PaletteID', '0', '185');
  replace('PaletteID', '2', '233');
  replace('PaletteID', '3', '186');
  replace('PaletteID', '24', '238');
}

for (%mod['it_mpot*.uti']) {
  replace('PaletteID', '238', '24');
}


for (%mod['rand00*.uti']) { replace('PaletteID', '1', '196'); }
for (%mod['rand01*.uti']) { replace('PaletteID', '1', '190'); }
for (%mod['rand02*.uti']) { replace('PaletteID', '1', '192'); }
for (%mod['rand03*.uti']) { replace('PaletteID', '1', '193'); }
for (%mod['randck*.uti']) { replace('PaletteID', '1', '194'); }
for (%mod['randam*.uti']) { replace('PaletteID', '1', '189'); }
for (%mod['randrg*.uti']) { replace('PaletteID', '1', '198'); }
for (%mod['randsh*.uti']) { replace('PaletteID', '1', '199'); }
for (%mod['randbl*.uti']) { replace('PaletteID', '1', '191'); }
for (%mod['randwp*.uti']) { replace('PaletteID', '1', '200'); }
for (%mod['randtr*.uti']) { replace('PaletteID', '1', '197'); }
for (%mod['rand*.uti']) { replace('PaletteID', '1', '188'); }


%mod = '>';
close %mod;

