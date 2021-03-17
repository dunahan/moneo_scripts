%mod = 'Path of Ascension CEP Legends.mod';

for (%mod['*.utc']) {
	$fac = /FactionID;
	if ($fac == 65 ||
			$fac == 66 ||
			$fac == 67 ||
			$fac == 72 ||
			$fac == 73 ||
			$fac == 74 ||
			$fac == 77) {
		$abilitydrop = 10;
		$acdrop = 7;
		$savedrop = 3;
		$str = /Str;
		$dex = /Dex;
		$abilitymoddrop = int($abilitydrop/2);
		$skill = 0;
		$vardis = 0;
		$varpar = 0;
		$dis = 0;
		$par = 0;
		$skillfound = 0;
		$dexdrop = 0;
		if (($dex > $str) || (($str-$dex) < ($abilitydrop+1))) {
			if (/Dex > ($abilitydrop+2)) {
				/Dex = /Dex - $abilitydrop;
				$dexdrop = $abilitymoddrop;
				/refbonus = /refbonus + $abilitymoddrop;
				$par = /SkillList/[10]/Rank;
				if ($par > 0) {
					if ($par < (100-$abilitymoddrop)) {
						/SkillList/[10]/Rank = /SkillList/[10]/Rank + $abilitymoddrop;
					} else {
					  for (/VarTable) {
					    if (/~/Name eq "Skill") {
					      $varpar = int(/~/Value / 100) % 10;
					      $skillfound = 1;
					      if ($varpar < 9) {
					      	/~/Value = /~/Value + 100;
					      	if ($abilitymoddrop < 5) {
					      		/SkillList/[10]/Rank = /SkillList/[10]/Rank - (5-$abilitymoddrop);
					      	}
					      } else {
					      	print /TemplateResRef, "	", /FirstName, ":	parry offset attempted but var too high", "\n";
					      }
					    }
					  }
					  if ($skillfound != 1) {
					  	add /VarTable, type => gffList unless /VarTable;
							add /VarTable/Name, type => gffString, value => "Skill";
							add /VarTable/[_]/Type, type => gffDword, value => 1;
							add /VarTable/[_]/Value, type => gffInt, value => 100;
					  	print /TemplateResRef, "	", /FirstName, ":	parry offset added Skill var", "\n";
					  	if ($abilitymoddrop < 5) {
					    	/SkillList/[10]/Rank = /SkillList/[10]/Rank - (5-$abilitymoddrop);
					  	}
					  }
				  }
			  }
				#print /TemplateResRef, "	", /FirstName, ":	dex also edited", "\n";
			} else {
				print /TemplateResRef, "	", /FirstName, ":	dex edit attempted but dex too low", "\n";
			}
		}
		if ($dexdrop != 0) {
			$acdrop = $acdrop-$dexdrop;
		}
		if (/NaturalAC >= $acdrop) {
			if ($acdrop != 0) {
				/NaturalAC = /NaturalAC - $acdrop;
			}
			#print /TemplateResRef, "	", /FirstName, ":	natural ac lowered by ", $acdrop, "\n";
		} else {
			$acdex = int($acdrop*2);
			if ($dex > ($acdex + 2)) {
				/Dex = /Dex - $acdex;
				/refbonus = /refbonus + $acdrop;
				$par = /SkillList/[10]/Rank;
				if ($par > 0) {
					if ($par < (100-$acdrop)) {
						/SkillList/[10]/Rank = /SkillList/[10]/Rank + $acdrop;
					} else {
					  for (/VarTable) {
					    if (/~/Name eq "Skill") {
					      $varpar = int(/~/Value / 100) % 10;
					      $skillfound = 1;
					      if ($varpar < 9) {
					      	/~/Value = /~/Value + 100;
					      	if ($acdrop < 5) {
					      		/SkillList/[10]/Rank = /SkillList/[10]/Rank - (5-$acdrop);
					      	}
					      } else {
					      	print /TemplateResRef, "	", /FirstName, ":	parry offset attempted from second dex edit offsetting ac, but var too high", "\n";
					      }
					    }
					  }
					  if ($skillfound != 1) {
					  	add /VarTable, type => gffList unless /VarTable;
							add /VarTable/Name, type => gffString, value => "Skill";
							add /VarTable/[_]/Type, type => gffDword, value => 1;
							add /VarTable/[_]/Value, type => gffInt, value => 100;
					  	print /TemplateResRef, "	", /FirstName, ":	parry offset, attempted from second dex edit offsetting ac, added Skill var", "\n";
					  	if ($abilitymoddrop < 5) {
					    	/SkillList/[10]/Rank = /SkillList/[10]/Rank - (5-$acdrop);
					  	}
					  }
				  }
			  }
			  #print /TemplateResRef, "	", /FirstName, ":	ac too low to edit but dex used to offset it", "\n";
			} else {
				print /TemplateResRef, "	", /FirstName, ":	ac too low to edit and dex too low to offset it", "\n";
			}
		}
		#Save variable 9NMDfrwFRW - only set in hiv_, and there only D set - all saves there subtractable, so no need to check for var before adding
		$fort = /fortbonus;
		$ref = /refbonus;
		$will = /willbonus;
		$diff = 0;
		$odd = 0;
		$fortinc = 0;
		$refinc = 0;
		$willinc = 0;
		$savevar = 0;
		if ($fort >= $savedrop) {
			/fortbonus = /fortbonus - $savedrop;
		} else {
			$diff = $savedrop - $fort;
			$odd = $diff % 2;
			$fortinc = int($diff / 2) + $odd;
			if ($odd == 1) {
				/fortbonus = 1;
			}
			$savevar = $fortinc * 100000;
		}
		if ($ref >= $savedrop) {
			/refbonus = /refbonus - $savedrop;
		} else {
			$diff = $savedrop - $ref;
			$odd = $diff % 2;
			$refinc = int($diff / 2) + $odd;
			if ($odd == 1) {
				/refbonus = 1;
			}
			$savevar += ($refinc * 10000);
		}
		if ($will >= $savedrop) {
			/willbonus = /willbonus - $savedrop;
		} else {
			$diff = $savedrop - $will;
			$odd = $diff % 2;
			$willinc = int($diff / 2) + $odd;
			if ($odd == 1) {
				/willbonus = 1;
			}
			$savevar += ($willinc * 1000);
		}
		if ($savevar != 0) {
			add /VarTable, type => gffList unless /VarTable;
			add /VarTable/Name, type => gffString, value => "Saves";
			add /VarTable/[_]/Type, type => gffDword, value => 1;
			add /VarTable/[_]/Value, type => gffInt, value => 0;
			#for some reason, cannot set value => $savevar directly, must set after
			for (/VarTable) {
				if (/~/Name eq "Saves") {
					/~/Value = $savevar;
				}
			}
			#print /TemplateResRef, "	", /FirstName, ":	Save variable added to decrease saves:	",$savevar, "\n";
		}

		if (/Str > ($abilitydrop+2)) {
				/Str = /Str - $abilitydrop;
				$dis = /SkillList/[1]/Rank;
				if ($dis < (100-$abilitymoddrop)) {
					/SkillList/[1]/Rank = /SkillList/[1]/Rank + $abilitymoddrop;
				} else {
				  for (/VarTable) {
				    if (/~/Name eq "Skill") {
				      $vardis = /~/Value % 10;
				      $skillfound = 1;
				      if ($vardis < 9) {
				      	/~/Value = /~/Value + 1;
				      	if ($abilitymoddrop < 5) {
				      		/SkillList/[1]/Rank = /SkillList/[1]/Rank - (5-$abilitymoddrop);
				      	}
				      } else {
				      	print /TemplateResRef, "	", /FirstName, ":	discipline offset attempted but var too high", "\n";
				      }
				    }
				  }
				  if ($skillfound != 1) {
				  	add /VarTable, type => gffList unless /VarTable;
						add /VarTable/Name, type => gffString, value => "Skill";
						add /VarTable/[_]/Type, type => gffDword, value => 1;
						add /VarTable/[_]/Value, type => gffInt, value => 1;
				  	#print /TemplateResRef, "	", /FirstName, ":	discipline offset added Skill var", "\n";
				  	if ($abilitymoddrop < 5) {
				    	/SkillList/[1]/Rank = /SkillList/[1]/Rank - (5-$abilitymoddrop);
				  	}
				  }
			  }
			} else {
				print /TemplateResRef, "	", /FirstName, ":	str too low to edit", "\n";
			}

	}
}

%mod = '>';
close(%mod);