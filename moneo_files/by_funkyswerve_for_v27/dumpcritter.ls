// Script provided by FunkySwerve, HigherGround
// Changed to syntax version 4.0.6.27rc3, dunahan@schwerterkueste.de
// Added some titles to the table, so its easier to read.

// Prints for the defined creature-file all info's of it. 

/*
Use of arrays. Declare an array like this:
@NameOfArray = ('$array01', '$array02', '$array03', '...');
@NameOfArray consist of the values '$array01', '$array02', '$array03' and
many more.
Note that keys do not require quotation (unless they contain spaces or other
reserved characters), and values can be of any type (the same is true to
arrays). Accessing and assigning to hash elements uses standard list syntax.
*/

%utc = 'PLACE_YOUR_FILE_HERE.utc' or die$!;

@classes = ( "Bbn", "Brd", "Clr", "Drd", "Ftr", "Mnk", "Pal", "Rgr", "Rog", "Sor", "Wiz", "Abr", "Anm", "Cns", "Hum", "MoH", "Ele", "Fey", "Drg", "Und", "Com", "Bst", "Gnt", "MaB", "Out", "Shp", "Ver", "Shd", "Har", "ArA", "Asn", "Blk", "CoT", "WpM", "PMa", "Shf", "DwD", "RDD", "Ooz", );

print "ResRef;FirstName;CR;";
print "ClassLvl;Str;Dex;Con;Int;Wis;Cha;fortbonus;refbonus;willbonus;NaturalAC;EnergyImmunities;";
print "EnergyResistance;OtherImmunes;SpellImmunes;Soak;NoPet;SR;DodgeAC;DeflectionAC;NaturalAC;\n";

print /TemplateResRef, ";", /FirstName, ";", /ChallengeRating, ";";

$val = "";

for (/ClassList) {
  $val = $val + "|" if $val ne "";
  $cls = /~/Class;
  $val = $val + $classes[$cls] + /~/ClassLevel;
}

print $val, ";", /Str, ";", /Dex, ";", /Con, ";", /Int, ";", /Wis, ";", /Cha, ";", /fortbonus, ";", /refbonus, ";", /willbonus, ";", /NaturalAC, ";";
$val = "";

for (/VarTable) {
  $val = /~/Value if /~/Name eq 'EnergyImmunities';
}

print $val, ";";

$val = "";

for (/VarTable) {
  $val = /~/Value if /~/Name eq 'EnergyResistance';
}

print $val, ";";

$val = "";

for (/VarTable) {
  $val = /~/Value if /~/Name eq 'OtherImmunes';
}

print $val, ";";

$val = "";

for (/VarTable) {
  $val = /~/Value if /~/Name eq 'SpellImmunes';
}

print $val, ";";

$val = "0+0";

for (/VarTable) {
  $val = /~/Value if /~/Name eq 'Soak';
}

print $val, ";";

$val = "";

for (/VarTable) {
  $val = /~/Value if /~/Name eq 'NoPet';
}

print $val, ";";

$val = "";

for (/VarTable) {
  $val = /~/Value if /~/Name eq 'SR';
}

print $val, ";";

$val = "0";

for (/VarTable) {
  $val = /~/Value if /~/Name eq 'DodgeAC';
}

print $val, ";";

$val = "0";

for (/VarTable) {
  $val = /~/Value if /~/Name eq 'DeflectionAC';
}

print $val, ";";

$val = "0";

for (/VarTable) {
  $val = /~/Value if /~/Name eq 'NaturalAC';
}

print $val, ";";

print "\n";

close %utc;