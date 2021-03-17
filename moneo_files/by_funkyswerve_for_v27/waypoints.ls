// Syntax Moneo Version 2.7
// Prints for all areas or area's with a specified tileset
// Thx to Proleric for sharing the usage of $_ as the filename!
// dunahan@schwerterkueste.de

%mod = 'www_schwerterkueste_de260.mod' or die$!;
$searchfor = 'SP_';
print "File;TemplateResRef;Tag;LocalizedName;MapNote;MNEnabled;X;Y;Z;XOrient;YOrient;\n";

for ('*.git' in %mod) {
  $are = substr($_, 0, -4);
  
  for (/WaypointList) {
    if ($searchfor ne '') {
      $locname = {/~/LocalizedName};

      $searchstring = substr($locname, 0, 3);
	  
      if ($searchstring eq $searchfor){
        print $are;			print ";";
        print /~/TemplateResRef;	print ";";
        print /~/Tag;			print ";";
        print /~/LocalizedName;		print ";";
        print /~/MapNote;		print ";";
        print /~/MapNoteEnabled;	print ";";
        print /~/XPosition;		print ";";
        print /~/YPosition;		print ";";
        print /~/ZPosition;		print ";";
        print /~/XOrientation;		print ";";
        print /~/YOrientation;		print ";";
        print "\n";
      }
    }
  }
}


close %mod;