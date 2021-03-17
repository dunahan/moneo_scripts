%mod = 'Path of Ascension CEP Legends.mod';

for (%mod['*.utc']) {
  for (/Equip_ItemList) {
    print /~/EquippedRes, " ", /~/Dropable, "\n";
  }
}
