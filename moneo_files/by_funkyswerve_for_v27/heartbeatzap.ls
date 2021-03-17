// Script provided from FunkySwerve, HigherGround
// Changed to syntax version 4.0.6.27rc3, dunahan@schwerterkueste.de

%mod = 'PLACE_YOUR_FILE_HERE.mod' or die$!;

for ('*.utc' in %mod)
{
  print qq<Processing: /TemplateResRef\n>;
  replace 'ScriptHeartbeat', 'x2_def_heartbeat', '';
}

%mod = '>';
close %mod;

