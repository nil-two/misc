<?php
while (true) {
    $rawnums = fgets(STDIN);
    if ($rawnums == "0\n")
        break;
    
    $sum = 0;
    $len = strlen($rawnums);
    for ($i = 0; $i < $len; $i++) {
        $sum += $rawnums[$i];
    }
    echo "$sum\n";
}
