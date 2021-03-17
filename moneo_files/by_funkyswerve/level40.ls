%mod = '../Path of Ascension CEP Legends.mod';

for (%mod['*.utc']) {
    $total = 0;

    $total += /~/ClassLevel for /ClassList;

    print "/TemplateResRef $total\n" if $total == 40;
    # /ClassList/[0]/ClassLevel += 1 if $total == 40;
}

%mod = '>';
close %mod;

