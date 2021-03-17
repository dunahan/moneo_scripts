// Script provided from dunahan@schwerterkueste.de
// Syntax version 4.0.6.27rc3
// Prints all doors in all areas equals to a pre-defined OnOpen-Script
// Added a option to replace the OnEnter script and save file.

/*
Special use of print(StringToPrint);
Note that some strings can't be printed if they are childrens of a list (/~/****). Especially AreaProperties, Door List and Placeable List in a git-file.
*/

%mod = 'PLACE_YOUR_FILE_HERE.mod' or die$!;
$script = 'PLACE_YOUR_SCRIPT_HERE';
$rplace = '';  //Leave empty if you don't want to change the scripts, elsewise enter script

print "Nbr;Door;Tag;Link;OnOpen;NewOnOpen;\n";

for ('*.git' in %mod) {
  $nbr;
  $count = 0;
  for (/{'Door List'}) {
    if (/~/OnOpen eq $script)
    {
      $nbr++;
      $count++;

      if ($count > 0) {
        print $nbr, ";";
        print $count, ";";
        print /~/Tag;
        print ";";
        print /~/LinkedTo;
        print ";";
        print /~/OnOpen;
        print ";";
      }

      if ($rplace ne '') {
        /~/OnOpen = $rplace;
        print /~/OnOpen;
        print ";";
      }

      print "\n";
    }
  }
}

if ($rplace ne '') {
  %mod = '>';
}

close %mod;