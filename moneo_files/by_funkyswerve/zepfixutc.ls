%hak = '..\..\hak\cep2_add_sb_v1.hak';

for (%hak['*.utc']) {
  print qq<Processing: /TemplateResRef /PaletteID\n>;

  replace('PaletteID',   '5', '150');
  replace('PaletteID',   '6', '150');
  replace('PaletteID',   '7', '150');
  replace('PaletteID',   '8', '150');
  replace('PaletteID',   '9', '150');
  replace('PaletteID', '100', '150');
  replace('PaletteID', '101', '150');
  replace('PaletteID', '102', '150');
  replace('PaletteID', '103', '150');
  replace('PaletteID', '117', '150');

  replace('PaletteID', '10', '151');
  replace('PaletteID', '11', '151');
  replace('PaletteID', '104', '151');
  replace('PaletteID', '105', '151');
  replace('PaletteID', '106', '151');

  replace('PaletteID', '13', '152');

  replace('PaletteID', '14', '153');
  replace('PaletteID', '15', '153');
  replace('PaletteID', '16', '153');
  replace('PaletteID', '17', '153');
  replace('PaletteID', '18', '153');
  replace('PaletteID', '19', '153');
  replace('PaletteID', '50', '153');

  replace('PaletteID', '20', '154');

  replace('PaletteID', '21', '155');

  replace('PaletteID', '22', '156');

  replace('PaletteID', '23', '158');
  replace('PaletteID', '24', '158');
  replace('PaletteID', '25', '158');
  replace('PaletteID', '26', '158');
  replace('PaletteID', '47', '158');
  replace('PaletteID', '108', '158');

  replace('PaletteID', '116', '159');

  replace('PaletteID', '109', '160');

  replace('PaletteID', '27', '161');
  replace('PaletteID', '28', '161');
  replace('PaletteID', '29', '161');
  replace('PaletteID', '30', '161');
  replace('PaletteID', '31', '161');
  replace('PaletteID', '32', '161');
  replace('PaletteID', '33', '161');

  replace('PaletteID', '34', '162');
  replace('PaletteID', '35', '162');
  replace('PaletteID', '36', '162');
  replace('PaletteID', '37', '162');

  replace('PaletteID', '12', '163');

  replace('PaletteID', '48', '164');

  replace('PaletteID', '49', '165');

  replace('PaletteID', '38', '166');
  replace('PaletteID', '39', '166');
  replace('PaletteID', '40', '166');
  replace('PaletteID', '41', '166');
  replace('PaletteID', '42', '166');
  replace('PaletteID', '43', '166');
  replace('PaletteID', '44', '166');
  replace('PaletteID', '45', '166');

  print qq<Processing: /TemplateResRef /PaletteID\n>;
}

%hak = '>';
close %hak;

