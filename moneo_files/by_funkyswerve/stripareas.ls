%mod = 'PoM.mod';

for (%mod['*.git']) {
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

for (%mod['*.gic']) {
  for (/{'Placeable List'}) {
    /~/Comment = '';
  }
}

%mod = '>';
close(%mod);
