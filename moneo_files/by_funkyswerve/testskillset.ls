%utc = 'h_cornugon.utc';
	print /SkillList/[1]/Rank;
	if (/SkillList/[1]/Rank < 95) {
		/SkillList/[1]/Rank = /SkillList/[1]/Rank + 5;
	  print /SkillList/[1]/Rank;
	}  

%utc = '>';
close(%utc);  