%mod = '../Path of Ascension CEP Legends.mod';

for (%mod['*.utc']) {
  print "Processing: /TemplateResRef\n";

  replace('ScriptOnNotice',   'ai_drow_boss_per',  'nw_c2_default2');
  replace('ScriptSpawn',      'ai_matliss_spawn',  'nw_c2_default9');
  replace('ScriptSpawn',      'ai_matwiz_spawn',   'nw_c2_default9');
  replace('ScriptDamaged',    'ai_npc_ondam',      'nw_c2_default6');
  replace('ScriptAttacked',   'ai_npc_onphiatt',   'npcattack');
  replace('ScriptSpawn',      'ai_npc_onspawn',    'n2_c2_default9');
  replace('ScriptSpellAt',    'ai_npc_onspellca',  'nw_c2_defaultb');
  replace('ScriptUserDefine', 'ai_shad_elf_user',  'shadow_elf_user');
  replace('ScriptOnBlocked',  'j_ai_onblocked',    'nw_c2_defaulte');
  replace('ScriptEndRound',   'j_ai_oncombatrou',  'nw_c2_default3');
  replace('ScriptDialogue',   'j_ai_onconversat',  'nw_c2_default4');
  replace('ScriptDamaged',    'j_ai_ondamaged',    'nw_c2_default6');
  replace('ScriptDisturbed',  'j_ai_ondisturbed',  'nw_c2_default8');
  replace('ScriptDamaged',    'j_ai_ondmgpetr',    'nw_c2_default6');
  replace('ScriptOnNotice',   'j_ai_onpercieve',   'nw_c2_default2');
  replace('ScriptAttacked',   'j_ai_onphiattack',  'nw_c2_default5');
  replace('ScriptRested',     'j_ai_onrest',       'nw_c2_defaulta');
  replace('ScriptSpawn',      'j_ai_onspawn',      'nw_c2_default9');
  replace('ScriptSpellAt',    'j_ai_onspellcast',  'nw_c2_defaultb');
}
