// Script provided from FunkySwerve, HigherGround
// Changed to syntax version 4.0.6.27rc3, dunahan@schwerterkueste.de

%mod = 'PLACE_YOUR_FILE_HERE.mod' or die$!;



for ('mol_*.utc' in %mod) {
  /Comment = "";
  $beh = 0;

  for (/VarTable) {
    if (/~/Name eq "Feedback" && /~/Value > 0) {
      $beh = $beh | 1;
      /~/Name = "Feedback_1_Type";


      if (/~/Value    ==  1) { /~/Value =     16; }
      elsif (/~/Value ==  2) { /~/Value =     32; }
      elsif (/~/Value ==  3) { /~/Value =    128; }
      elsif (/~/Value ==  4) { /~/Value =    256; }
      elsif (/~/Value ==  5) { /~/Value =   2048; }
      elsif (/~/Value ==  6) { /~/Value =      8; }
      elsif (/~/Value ==  7) { /~/Value =   1024; }
      elsif (/~/Value ==  8) { /~/Value =    512; }
      elsif (/~/Value ==  9) { /~/Value =     64; }
      elsif (/~/Value == 10) { /~/Value =  65001; }
      elsif (/~/Value == 11) { /~/Value =    -16; }
      elsif (/~/Value == 12) { /~/Value =    -32; }
      elsif (/~/Value == 13) { /~/Value =   -128; }
      elsif (/~/Value == 14) { /~/Value =   -256; }
      elsif (/~/Value == 15) { /~/Value =  -2048; }
      elsif (/~/Value == 16) { /~/Value =     -8; }
      elsif (/~/Value == 17) { /~/Value =  -1024; }
      elsif (/~/Value == 18) { /~/Value =   -512; }
      elsif (/~/Value == 19) { /~/Value =    -64; }
      elsif (/~/Value == 20) { /~/Value = -65001; }
      elsif (/~/Value == 21) { /~/Value =      1; }
      elsif (/~/Value == 22) { /~/Value =      2; }
      elsif (/~/Value == 23) { /~/Value =      4; }
    }

    if (/~/Name eq "Feedback2" && /~/Value > 0) {
      $beh = $beh | 2;
      /~/Name = "Feedback_2_Type";

      if (/~/Value    ==  1) { /~/Value =     16; }
      elsif (/~/Value ==  2) { /~/Value =     32; }
      elsif (/~/Value ==  3) { /~/Value =    128; }
      elsif (/~/Value ==  4) { /~/Value =    256; }
      elsif (/~/Value ==  5) { /~/Value =   2048; }
      elsif (/~/Value ==  6) { /~/Value =      8; }
      elsif (/~/Value ==  7) { /~/Value =   1024; }
      elsif (/~/Value ==  8) { /~/Value =    512; }
      elsif (/~/Value ==  9) { /~/Value =     64; }
      elsif (/~/Value == 10) { /~/Value =  65001; }
      elsif (/~/Value == 11) { /~/Value =     16; }
      elsif (/~/Value == 12) { /~/Value =     32; }
      elsif (/~/Value == 13) { /~/Value =    128; }
      elsif (/~/Value == 14) { /~/Value =    256; }
      elsif (/~/Value == 15) { /~/Value =   2048; }
      elsif (/~/Value == 16) { /~/Value =      8; }
      elsif (/~/Value == 17) { /~/Value =   1024; }
      elsif (/~/Value == 18) { /~/Value =    512; }
      elsif (/~/Value == 19) { /~/Value =     64; }
      elsif (/~/Value == 20) { /~/Value =  65001; }
      elsif (/~/Value == 21) { /~/Value =      1; }
      elsif (/~/Value == 22) { /~/Value =      2; }
      elsif (/~/Value == 23) { /~/Value =      4; }
    }

    if (/~/Name eq "FeedbackDam") {
      /~/Name = "Feedback_1_Amount";

    }

    if (/~/Name eq "FeedbackDam2") {
      /~/Name = "Feedback_2_Amount";

    }

    if (/~/Name eq "NoPet" && (/~/Value & 2)) {
      $beh = $beh | 0x40;
      print /TemplateResRef, " NoPet 2 ", /ScriptDamaged, "\n";

    }

    if (/~/Name eq "HealType") {
      $beh = $beh | 0x10;
    }

    if (/~/Name eq "WeaponStick") {
      $beh = $beh | 0x80;
      print /TemplateResRef, " WeaponStick\n";

    }

    if (/~/Name eq "DamTrigger") {
      $beh = $beh | (/~/Value << 16);
      print /TemplateResRef, " DamTrigger\n";

    }

    if (/FactionID != 7) {
      if (/ScriptOnNotice eq "fky_ai_2percept" && /ScriptDialogue eq "nw_c2_default4") {
        /ScriptDialogue = "fky_ai_4dialogue";
      }

      if (/ScriptOnNotice eq "fky_ai_2percept" && /ScriptAttacked eq "nw_c2_default5") {
        /ScriptAttacked = "fky_ai_5attacked";
      }
    }
  }

  replace 'Name', 'WeaponStick', DeleteParent;

  replace 'Name', 'DamTrigger', DeleteParent;


  if ($beh > 0) {
    add /VarTable/Name, type => gffString, value => "DamageBehavior";

    add /VarTable/[_]/Type, type => gffDword, value => 1;
    add /VarTable/[_]/Value, type => gffInt, value => 0;
    /VarTable/[_]/Value = $beh;

    print /TemplateResRef, " DamageBehavior ", /VarTable/[_]/Value, "\n";

  }

}



%mod = '>';

close(%mod);
