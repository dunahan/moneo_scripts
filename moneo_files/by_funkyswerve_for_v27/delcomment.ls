// Script provided by FunkySwerve, HigherGround
// Changed to syntax version 4.0.6.27rc3, dunahan@schwerterkueste.de

// Deletes the comments for every creature-file with the prefix
// "uro" of the module, available only from the toolset.

%mod = 'PLACE_YOUR_FILE_HERE.mod' or die$!;
$debug = 'yes';

for ('uro*.utc' in %mod) {
  if ($debug eq 'yes') {
    print "Working on file ", /TemplateResRef, ".utc!\n";
  }
  /Comment = "";

  if ($debug eq 'yes') {
    print "File ", /TemplateResRef, ".utc done.";
  }
}

%mod = '>';
close %mod;