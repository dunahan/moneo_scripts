// Script provided from FunkySwerve, HigherGround
// Changed to syntax version 4.0.6.27rc3, dunahan@schwerterkueste.de

%mod = 'PLACE_YOUR_FILE_HERE.mod' or die$!;



@classes = ( "Bbn", "Brd", "Clr", "Drd", "Ftr", "Mnk", "Pal", "Rgr", "Rog", "Sor", "Wiz", "Abr", "Anm", "Cns", "Hum", "MoH", "Ele", "Fey", "Drg", "Und", "Com", "Bst", "Gnt", "MaB", "Out", "Shp", "Ver", "Shd", "Har", "ArA", "Asn", "Blk", "CoT", "WpM", "PMa", "Shf", "DwD", "RDD", "Ooz", );



for ('*.utc' in %mod) {
  if (/ChallengeRating >= 90.0 && /ChallengeRating <= 150.0) {
    print "\"", /TemplateResRef, "\",";
    print "\"", /FirstName, "\",";
    print "\"\",";
    print "\"", /ChallengeRating, "\",";
    print "\"\",";

    $val = "";


    for (/ClassList) {
      $val = $val + "|" if $val ne "";
      $cls = /~/Class;
      $val = $val + $classes[$cls] + /~/ClassLevel;

    }


    print "\"", $val, "\",";

    print "\"\",";
    print "\"", /Str, "\",";
    print "\"", /Dex, "\",";
    print "\"", /Con, "\",";
    print "\"", /Int, "\",";
    print "\"", /Wis, "\",";
    print "\"", /Cha, "\",";
    print "\"\",";
    print "\"", /fortbonus, "\",";
    print "\"", /refbonus, "\",";

    print "\"", /willbonus, "\",";

    print "\"\",";

    print "\"", /NaturalAC, "\",";

    print "\"\",";


    $val = "";

    for (/VarTable) {
      $val = /~/Value if /~/Name eq 'EnergyImmunities';
    }

    print "\"", $val, "\",";

    $val = "";

    for (/VarTable) {
      $val = /~/Value if /~/Name eq 'EnergyResistance';
    }

    print "\"", $val, "\",";

    print "\"\",";

    $val = "";

    for (/VarTable) {
      $val = /~/Value if /~/Name eq 'OtherImmunes';
    }

    print "\"", $val, "\",";
    $val = "";

    for (/VarTable) {
      $val = /~/Value if /~/Name eq 'SpellImmunes';
    }

    print "\"", $val, "\",";

    print "\"\",";

    $val = "0+0";

    for (/VarTable) {
      $val = /~/Value if /~/Name eq 'Soak';
    }

    print "\"", $val, "\",";

    $val = "";

    for (/VarTable) {
      $val = /~/Value if /~/Name eq 'NoPet';
    }

    print "\"", $val, "\",";

    print "\"\",";

    $val = "";

    for (/VarTable) {
      $val = /~/Value if /~/Name eq 'SR';
    }

    print "\"", $val, "\",";

    print "\"\",";

    $val = "0";

    for (/VarTable) {
      $val = /~/Value if /~/Name eq 'DodgeAC';
    }

    print "\"", $val, "\",";

    $val = "0";

    for (/VarTable) {
      $val = /~/Value if /~/Name eq 'DeflectionAC';
    }

    print "\"", $val, "\",";

    $val = "0";

    for (/VarTable) {
      $val = /~/Value if /~/Name eq 'NaturalAC';
    }

    print "\"", $val, "\",";

    print "\"\",";

    print "\n";

  }

}
