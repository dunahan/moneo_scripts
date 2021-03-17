%hak = '../hak/cep2_add_sb_v1.hak';

for (%hak['*.utp']) {
  /PaletteID = 59;
  print /TemplateResRef, " ", /PaletteID, "\n";
}

%hak = '>';
close(%hak);
