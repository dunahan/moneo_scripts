%mod = 'Path of Ascension CEP Legends.mod';

for (%mod['*.uti']) {
  if (/BaseItem == 52) {
    if (/ModelPart1 == 129 || /ModelPart1 == 185 || /ModelPart1 == 139 || /ModelPart1 == 122 || /ModelPart1 == 128 || /ModelPart1 == 140 || /ModelPart1 == 181 || /ModelPart1 == 183 || /ModelPart1 == 127 || /ModelPart1 == 126 || /ModelPart1 == 182 || /ModelPart1 == 184 || /ModelPart1 == 125 || /ModelPart1 == 124 || /ModelPart1 == 123 || /ModelPart1 == 141 || /ModelPart1 == 138 || /ModelPart1 == 130) {
      print /TemplateResRef, " ", /ModelPart1, "\n";
    }
  }
}
