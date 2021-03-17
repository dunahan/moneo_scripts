// Script provided by FunkySwerve, HigherGround
// Changed to syntax version 4.0.6.27rc3, dunahan@schwerterkueste.de

// Changes the value of the first skill of a specified creature-file
// if it is lower than 95. Takes the actual value and adds five points
// For debug purpose, logs it to a file

%utc = 'PLACE_YOUR_FILE_HERE.utc' or die$!;

  print /SkillList/[1]/Rank;
  if (/SkillList/[1]/Rank < 95) {
    /SkillList/[1]/Rank = /SkillList/[1]/Rank + 5;
    print /SkillList/[1]/Rank;
  }  

%utc = '>';
close(%utc);  