// Script provided from FunkySwerve, HigherGround
// Changed to syntax version 4.0.6.27rc3, dunahan@schwerterkueste.de

%mod = 'PLACE_YOUR_FILE_HERE.mod' or die$!;

for ('*.utc' in %mod) {
  if (/TemplateResRef ne 'oltum' &&
      /TemplateResRef ne 'weaponmasterkhu' &&
      /TemplateResRef ne 'weaponmastergur' &&
      /TemplateResRef ne 'weaponmastermat') {
    print "/TemplateResRef FOUND\n" if find  'Feat', 495, /FeatList;
    print "/TemplateResRef FOUND\n" if find  'Feat', 496, /FeatList;
    print "/TemplateResRef FOUND\n" if find  'Feat', 497, /FeatList;
    print "/TemplateResRef FOUND\n" if find  'Feat', 498, /FeatList;
    print "/TemplateResRef FOUND\n" if find  'Feat', 499, /FeatList;
    print "/TemplateResRef FOUND\n" if find  'Feat', 500, /FeatList;
    print "/TemplateResRef FOUND\n" if find  'Feat', 501, /FeatList;
    print "/TemplateResRef FOUND\n" if find  'Feat', 502, /FeatList;
    print "/TemplateResRef FOUND\n" if find  'Feat', 503, /FeatList;
    print "/TemplateResRef FOUND\n" if find  'Feat', 504, /FeatList;
    print "/TemplateResRef FOUND\n" if find  'Feat', 505, /FeatList;
    print "/TemplateResRef FOUND\n" if find  'Feat', 506, /FeatList;
    print "/TemplateResRef FOUND\n" if find  'Feat', 507, /FeatList;
    print "/TemplateResRef FOUND\n" if find  'Feat', 508, /FeatList;
    print "/TemplateResRef FOUND\n" if find  'Feat', 509, /FeatList;
    print "/TemplateResRef FOUND\n" if find  'Feat', 510, /FeatList;
    print "/TemplateResRef FOUND\n" if find  'Feat', 511, /FeatList;
    print "/TemplateResRef FOUND\n" if find  'Feat', 512, /FeatList;
    print "/TemplateResRef FOUND\n" if find  'Feat', 513, /FeatList;
    print "/TemplateResRef FOUND\n" if find  'Feat', 514, /FeatList;

    print "/TemplateResRef FOUND\n" if find  'Feat', 515, /FeatList;
    print "/TemplateResRef FOUND\n" if find  'Feat', 516, /FeatList;
    print "/TemplateResRef FOUND\n" if find  'Feat', 517, /FeatList;
    print "/TemplateResRef FOUND\n" if find  'Feat', 518, /FeatList;
    print "/TemplateResRef FOUND\n" if find  'Feat', 519, /FeatList;
    print "/TemplateResRef FOUND\n" if find  'Feat', 520, /FeatList;
    print "/TemplateResRef FOUND\n" if find  'Feat', 521, /FeatList;
    print "/TemplateResRef FOUND\n" if find  'Feat', 522, /FeatList;
    print "/TemplateResRef FOUND\n" if find  'Feat', 523, /FeatList;

    print "/TemplateResRef FOUND\n" if find  'Feat', 524, /FeatList;
    print "/TemplateResRef FOUND\n" if find  'Feat', 525, /FeatList;
    print "/TemplateResRef FOUND\n" if find  'Feat', 526, /FeatList;
    print "/TemplateResRef FOUND\n" if find  'Feat', 527, /FeatList;
    print "/TemplateResRef FOUND\n" if find  'Feat', 528, /FeatList;
    print "/TemplateResRef FOUND\n" if find  'Feat', 529, /FeatList;
    print "/TemplateResRef FOUND\n" if find  'Feat', 530, /FeatList;
    print "/TemplateResRef FOUND\n" if find  'Feat', 531, /FeatList;
    print "/TemplateResRef FOUND\n" if find  'Feat', 532, /FeatList;
    print "/TemplateResRef FOUND\n" if find  'Feat', 955, /FeatList;
    print "/TemplateResRef FOUND\n" if find  'Feat', 996, /FeatList;
  }

}



%mod = '>';

close(%mod);
