// Script provided by dunahan@schwerterkueste.de
// Syntax version 4.0.6.27rc3

// Prints all monsters in module if their resref ends with boss (changeable).

/*
Use of substr(SearchableString, StartingAt, AmountLetters) eq 'StringToSearch';
Searches from left to right for StringToSearch in SearchableString. Beginning at StartingAt and counts AmountLetters from that point. StartingAt can be negative, if you want to start from the right counting to the left.
*/

%mod = 'PLACE_YOUR_MOD_HERE.mod' or die$!;
$startat = -4;       //Start search at from left to right. Positive value starts from right to left!
$countletters = 4;   //Letters to go in the direction pointed, see above
$searchfor = 'boss'; //Value to search for

print "Name;ResRef;SpawnScript;CR;CR-Adjust;\n";

for ('*.utc' in %mod) {
  if (substr(/TemplateResRef, $startat, $countletters) eq $searchfor) {
    if (/ScriptSpawn ne 'PLACE_SCRIPT_TO_SEARCH_FOR_HERE') {
      print /FirstName, ";", /TemplateResRef, ";", /ScriptSpawn, ";", /ChallengeRating, ";", /CRAdjust, ";\n";
	  /ScriptSpawn = 'PLACE_SCRIPT_TO_CHANGE_TO_HERE';
      print /FirstName, ";", /TemplateResRef, ";", /ScriptSpawn, ";", /ChallengeRating, ";", /CRAdjust, ";\n";
	}
  }
}

%mod = '>';
close %mod;