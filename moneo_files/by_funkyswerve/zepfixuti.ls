%hak = '..\..\hak\cep2_add_sb_v1.hak';

for (%hak['*.uti']) {
  print qq<Processing: /TemplateResRef /PaletteID\n>;

  replace('PaletteID', '5', '150');
  replace('PaletteID', '6', '150');
  replace('PaletteID', '7', '150');
  replace('PaletteID', '8', '150');
  replace('PaletteID', '9', '150');
  replace('PaletteID', '10', '150');
  replace('PaletteID', '11', '150');
  replace('PaletteID', '12', '150');

  replace('PaletteID', '14', '151');
  replace('PaletteID', '58', '151');

  replace('PaletteID', '13', '152');
  replace('PaletteID', '55', '152');
  replace('PaletteID', '56', '152');
  replace('PaletteID', '59', '152');

  replace('PaletteID', '15', '153');
  replace('PaletteID', '16', '153');
  replace('PaletteID', '17', '153');
  replace('PaletteID', '18', '153');
  replace('PaletteID', '19', '153');
  replace('PaletteID', '21', '153');
  replace('PaletteID', '22', '153');

  replace('PaletteID', '0', '154');
  replace('PaletteID', '20', '154');
  replace('PaletteID', '23', '154');
  replace('PaletteID', '24', '154');
  replace('PaletteID', '26', '154');
  replace('PaletteID', '57', '154');
  replace('PaletteID', '60', '154');
  replace('PaletteID', '64', '154');
  replace('PaletteID', '100', '154');
  replace('PaletteID', '101', '154');
  replace('PaletteID', '102', '154');
  replace('PaletteID', '103', '154');

  replace('PaletteID', '43', '156');
  replace('PaletteID', '44', '156');
  replace('PaletteID', '45', '156');
  replace('PaletteID', '62', '156');
  replace('PaletteID', '52', '156');

  replace('PaletteID', '46', '157');
  replace('PaletteID', '47', '157');

  replace('PaletteID', '27', '155');
  replace('PaletteID', '28', '155');
  replace('PaletteID', '29', '155');
  replace('PaletteID', '30', '155');
  replace('PaletteID', '31', '155');
  replace('PaletteID', '32', '155');
  replace('PaletteID', '33', '155');
  replace('PaletteID', '34', '155');
  replace('PaletteID', '35', '155');
  replace('PaletteID', '36', '155');
  replace('PaletteID', '37', '155');
  replace('PaletteID', '38', '155');
  replace('PaletteID', '40', '155');
  replace('PaletteID', '41', '155');
  replace('PaletteID', '42', '155');
  replace('PaletteID', '61', '155');
  replace('PaletteID', '48', '155');
  replace('PaletteID', '49', '155');
  replace('PaletteID', '50', '155');
  replace('PaletteID', '51', '155');

  print qq<Processing: /TemplateResRef /PaletteID\n>;
}

%hak = '>';
close %hak;

