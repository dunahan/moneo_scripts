%mod = 'Path of Ascension CEP Legends.mod';

for (%mod['*.git']) {
 for (/VarTable) {
   # if (/~/Name eq 'XPMult') {
   #   /~/Name  = 'XPAdjustment';
   #   /~/Value = (/~/Value - 4.0) / 10.0;
   # }
   if (/~/Name eq 'XPAdjustment') {
     print /TemplateResRef, ' ', /~/Value, "\n";
   }
 }
}

# %mod = '>';
# close(%mod);
