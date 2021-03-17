// Script provided from FunkySwerve, HigherGround
// Changed to syntax version 4.0.6.27rc3, dunahan@schwerterkueste.de

// Sets all placeables in a module to static, deletes all scripts and
// kills all set variables, also all commends to it.

%mod = 'PLACE_YOUR_FILE_HERE.mod' or die$!;

for ('*.git' in %mod) {
  for (/{'Placeable List'}) {
    /~/Static = 1;
    /~/Description = '';
    /~/OnClick = '';
    /~/OnClosed = '';
    /~/OnDamaged = '';
    /~/OnDeath = '';
    /~/OnDisarm = '';
    /~/OnHeartbeat = '';
    /~/OnInvDisturbed = '';
    /~/OnLock = '';
    /~/OnMeleeAttacked = '';
    /~/OnOpen = '';
    /~/OnSpellCastAt = '';
    /~/OnTrapTriggered = '';
    /~/OnUnlock = '';
    /~/OnUsed = '';
    /~/OnUserDefined = '';
    delete /~/VarTable;
  }
}

for ('*.gic' in %mod) {
  for (/{'Placeable List'}) {
    /~/Comment = '';
  }
}

%mod = '>';
close(%mod);