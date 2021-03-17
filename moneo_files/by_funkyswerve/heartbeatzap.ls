%mod = 'C:\NeverwinterNights\NWN\modules\Chaotic World Legends.mod';
for (%mod['*.utc'])
{
  print qq<Processing: /TemplateResRef\n>;

replace 'ScriptHeartbeat', 'x2_def_heartbeat', '';
}

%mod = '>';
close %mod;

