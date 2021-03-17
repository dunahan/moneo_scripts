// Script provided from FunkySwerve, HigherGround
// Changed to syntax version 4.0.6.27rc3, dunahan@schwerterkueste.de

// Calculates and replaces various variables for every creature-file
// in the specified module

%mod = 'PLACE_YOUR_FILE_HERE.mod' or die$!;

$IMMUNITY_TYPE_MIND_SPELLS               = 1;
$IMMUNITY_TYPE_POISON                    = 2;
$IMMUNITY_TYPE_DISEASE                   = 4;
$IMMUNITY_TYPE_FEAR                      = 8;
$IMMUNITY_TYPE_DEATH                     = 16;
$IMMUNITY_TYPE_PARALYSIS                 = 32;
$IMMUNITY_TYPE_BLINDNESS                 = 64;
$IMMUNITY_TYPE_DEAFNESS                  = 128;
$IMMUNITY_TYPE_SLOW                      = 256;
$IMMUNITY_TYPE_ENTANGLE                  = 512;
$IMMUNITY_TYPE_SILENCE                   = 1024;
$IMMUNITY_TYPE_STUN                      = 2048;
$IMMUNITY_TYPE_SLEEP                     = 4096;
$IMMUNITY_TYPE_CHARM                     = 8192;
$IMMUNITY_TYPE_DOMINATE                  = 16384;
$IMMUNITY_TYPE_CONFUSED                  = 32768;
$IMMUNITY_TYPE_CURSED                    = 65536;
$IMMUNITY_TYPE_DAZED                     = 131072;
$IMMUNITY_TYPE_ABILITY_DECREASE          = 262144;
$IMMUNITY_TYPE_ATTACK_DECREASE           = 524288;
$IMMUNITY_TYPE_DAMAGE_DECREASE           = 1048576;
$IMMUNITY_TYPE_DAMAGE_IMMUNITY_DECREASE  = 2097152;
$IMMUNITY_TYPE_AC_DECREASE               = 4194304;
$IMMUNITY_TYPE_MOVEMENT_SPEED_DECREASE   = 8388608;
$IMMUNITY_TYPE_SAVING_THROW_DECREASE     = 16777216;
$IMMUNITY_TYPE_SPELL_RESISTANCE_DECREASE = 33554432;
$IMMUNITY_TYPE_SKILL_DECREASE            = 67108864;
$IMMUNITY_TYPE_KNOCKDOWN                 = 134217728;
$IMMUNITY_TYPE_NEGATIVE_LEVEL            = 268435456;
$IMMUNITY_TYPE_SNEAK_ATTACK              = 536870912;
$IMMUNITY_TYPE_CRITICAL_HIT              = 1073741824;

for ('cb22_*.utc' in %mod) {
  $otherimm = -1;
  $spellimm = -1;
  $resist   = -1;
  for (/VarTable) {
    if (/~/Name eq "OtherImmunes") {
      $otherimm = /~/Value;
    }

    if (/~/Name eq "SpellImmunes") {
      $spellimm = /~/Value;
    }

    if (/~/Name eq "Resist") {
      $resist = /~/Value;
    }
  }

  if ($otherimm >= 0 || $spellimm >= 0 || $resist >= 0) {
    if ($otherimm < 0) {
      add /VarTable/Name,      type => gffString, value => "OtherImmunes";
      add /VarTable/[_]/Type,  type => gffDword,  value => 1;
      add /VarTable/[_]/Value, type => gffInt,    value => 0;
      $otherimm = 0;
    }

    if ($spellimm < 0) {
      add /VarTable/Name,      type => gffString, value => "SpellImmunes";
      add /VarTable/[_]/Type,  type => gffDword,  value => 1;
      add /VarTable/[_]/Value, type => gffInt,    value => 0;
      $spellimm = 0;
    }

    if ($resist < 0) {
      add /VarTable/Name,      type => gffString, value => "Resist";
      add /VarTable/[_]/Type,  type => gffDword,  value => 1;
      add /VarTable/[_]/Value, type => gffInt,    value => 0;
      $resist = 0;
    }

    $miscimm = 0;
    $physimm = $resist + (($otherimm % 1000) * 1000);
    $odigit3 = int($otherimm / 1000) % 10;
    $odigit4 = int($otherimm / 10000) % 10;
    $odigit5 = int($otherimm / 100000) % 10;
    $odigit6 = int($otherimm / 1000000) % 10;
    $odigit7 = int($otherimm / 10000000) % 10;
    $odigit8 = int($otherimm / 100000000) % 10;
    $odigit9 = int($otherimm / 1000000000) % 10;
    $sdigit9 = int($spellimm / 1000000000) % 10;

    if ($sdigit9 == 1) {
      $miscimm = $miscimm | $IMMUNITY_TYPE_PARALYSIS;
      $miscimm = $miscimm | $IMMUNITY_TYPE_ENTANGLE;
      $miscimm = $miscimm | $IMMUNITY_TYPE_SLOW;
      $miscimm = $miscimm | $IMMUNITY_TYPE_MOVEMENT_SPEED_DECREASE;
    } elsif ($sdigit9 == 2) {
      $miscimm = $miscimm | $IMMUNITY_TYPE_PARALYSIS;
    }

    $spellimm = $spellimm % 1000000000;
    if ($odigit9 > 0) {
      $physimm = $physimm + 1000000000;
    }

    if ($odigit8 > 0) {
      if ($odigit8 == 1) {
        $odigit8 = 3;
      } else {
        $odigit8 = $odigit8 - 1;
      }

      if ($odigit8 & 1) { $miscimm = $miscimm | $IMMUNITY_TYPE_NEGATIVE_LEVEL;   }
      if ($odigit8 & 2) { $miscimm = $miscimm | $IMMUNITY_TYPE_ABILITY_DECREASE; }
      if ($odigit8 & 4) { $miscimm = $miscimm | $IMMUNITY_TYPE_SKILL_DECREASE;   }
    }

    if ($odigit7 > 0) {
      if ($odigit7 & 1) { $miscimm = $miscimm | $IMMUNITY_TYPE_KNOCKDOWN;       }
      if ($odigit7 & 2) { $miscimm = $miscimm | $IMMUNITY_TYPE_AC_DECREASE;     }
      if ($odigit7 & 4) { $miscimm = $miscimm | $IMMUNITY_TYPE_ATTACK_DECREASE; }
    }

    if ($odigit6 > 0) {
      if ($odigit6 & 1) { $miscimm = $miscimm | $IMMUNITY_TYPE_DEATH;                    }
      if ($odigit6 & 2) { $miscimm = $miscimm | $IMMUNITY_TYPE_SAVING_THROW_DECREASE;    }
      if ($odigit6 & 4) { $miscimm = $miscimm | $IMMUNITY_TYPE_DAMAGE_IMMUNITY_DECREASE; }
    }

    if ($odigit5 > 0) {
      if ($odigit5 == 9) {
        $miscimm = $miscimm | $IMMUNITY_TYPE_DOMINATE;
        $miscimm = $miscimm | $IMMUNITY_TYPE_CHARM;
        $miscimm = $miscimm | $IMMUNITY_TYPE_CONFUSED;
        $miscimm = $miscimm | $IMMUNITY_TYPE_FEAR;
      } elsif ($odigit5 == 8) {
        $miscimm = $miscimm | $IMMUNITY_TYPE_DOMINATE;
        $miscimm = $miscimm | $IMMUNITY_TYPE_CHARM;
        $miscimm = $miscimm | $IMMUNITY_TYPE_CONFUSED;
      } else {
        if ($odigit5 & 1) { $miscimm = $miscimm | $IMMUNITY_TYPE_MIND_SPELLS; }
        if ($odigit5 & 2) { $miscimm = $miscimm | $IMMUNITY_TYPE_PARALYSIS;   }
        if ($odigit5 & 4) { $miscimm = $miscimm | $IMMUNITY_TYPE_FEAR;        }
      }
    }

    if ($odigit4 > 0) {
      if ($odigit4 == 9) {
        $miscimm = $miscimm | $IMMUNITY_TYPE_CRITICAL_HIT;
        $miscimm = $miscimm | $IMMUNITY_TYPE_SNEAK_ATTACK;
        $miscimm = $miscimm | $IMMUNITY_TYPE_POISON;
        $miscimm = $miscimm | $IMMUNITY_TYPE_DISEASE;
        $miscimm = $miscimm | $IMMUNITY_TYPE_STUN;
        $miscimm = $miscimm | $IMMUNITY_TYPE_DAZED;
        $miscimm = $miscimm | $IMMUNITY_TYPE_SLEEP;
      } elsif ($odigit4 == 8) {
        $miscimm = $miscimm | $IMMUNITY_TYPE_CRITICAL_HIT;
        $miscimm = $miscimm | $IMMUNITY_TYPE_POISON;
        $miscimm = $miscimm | $IMMUNITY_TYPE_DISEASE;
        $miscimm = $miscimm | $IMMUNITY_TYPE_STUN;
        $miscimm = $miscimm | $IMMUNITY_TYPE_DAZED;
        $miscimm = $miscimm | $IMMUNITY_TYPE_SLEEP;
      } else {
        if ($odigit4 & 1) { $miscimm = $miscimm | $IMMUNITY_TYPE_CRITICAL_HIT; }
        if ($odigit4 & 2) { $miscimm = $miscimm | $IMMUNITY_TYPE_SNEAK_ATTACK; }
        if ($odigit4 & 4) { $miscimm = $miscimm | $IMMUNITY_TYPE_POISON;       }
        if ($odigit4 & 4) { $miscimm = $miscimm | $IMMUNITY_TYPE_DISEASE;      }
      }
    }

    if ($odigit3 > 0) {
      $vision = 0;
      if ($odigit3 == 1) {
        $vision  = 1;
      } elsif ($odigit3 == 2) {
        $vision  = 1;
        $miscimm = $miscimm | $IMMUNITY_TYPE_BLINDNESS;
      } elsif ($odigit3 == 3) {
        $vision  = 1;
        $miscimm = $miscimm | $IMMUNITY_TYPE_DEAFNESS;
      } elsif ($odigit3 == 4) {
        $vision  = 1;
        $miscimm = $miscimm | $IMMUNITY_TYPE_BLINDNESS;
        $miscimm = $miscimm | $IMMUNITY_TYPE_DEAFNESS;
      } elsif ($odigit3 == 5) {
        $vision  = 2;
      } elsif ($odigit3 == 6) {
        $vision  = 2;
        $miscimm = $miscimm | $IMMUNITY_TYPE_BLINDNESS;
      } elsif ($odigit3 == 7) {
        $vision  = 2;
        $miscimm = $miscimm | $IMMUNITY_TYPE_DEAFNESS;
      } elsif ($odigit3 == 8) {
        $vision  = 2;
        $miscimm = $miscimm | $IMMUNITY_TYPE_BLINDNESS;
        $miscimm = $miscimm | $IMMUNITY_TYPE_DEAFNESS;
      } elsif ($odigit3 == 9) {
        $vision  = 4;
      }

      $physimm = $physimm + ($vision * 100000000);
    }

    # print /TemplateResRef, ";", $miscimm, ";", $spellimm, ";", $physimm, ";\n";
    print "gffmodify.pl ", /TemplateResRef, ".utc --variable 'MiscImmunes#int=", $miscimm, "' --variable 'PhysImmunities#int=", $physimm, "'\n";

    # for (/VarTable) {
    #   if (/~/Name eq "OtherImmunes") {
    #     /~/Name = "MiscImmunes";
    #   } elsif (/~/Name eq "Resist") {
    #     /~/Name = "PhysImmunities";
    #   }
    # }

    # replace 'Name', 'OtherImmunes', DeleteParent, /VarTable;
    # replace 'Name', 'SpellImmunes', DeleteParent, /VarTable;
    # replace 'Name', 'Resist', DeleteParent, /VarTable;

    # if ($miscimm > 0) {
    #   add /VarTable/Name,      type => gffString, value => "MiscImmunes";
    #   add /VarTable/[_]/Type,  type => gffDword,  value => 1;
    #   add /VarTable/[_]/Value, type => gffInt,    value => int($miscimm);
    # }
    #
    # if ($spellimm > 0) {
    #   add /VarTable/Name,      type => gffString, value => "SpellImmunes";
    #   add /VarTable/[_]/Type,  type => gffDword,  value => 1;
    #   add /VarTable/[_]/Value, type => gffInt,    value => int($spellimm);
    #   $spellimm = 0;
    # }

    # if ($physimm > 0) {
    #   add /VarTable/Name,      type => gffString, value => "PhysImmunities";
    #   add /VarTable/[_]/Type,  type => gffDword,  value => 1;
    #   add /VarTable/[_]/Value, type => gffInt,    value => int($physimm);
    #   $resist = 0;
    # }
  }
}

%mod = '>';
close %mod;
