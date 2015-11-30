<?php

function average($nums) {
    $sum = 0;

    $len = count($nums);
    for ($i = 0; $i < $len; $i++)
        $sum += $nums[$i];

    return $sum / $len;
}

function variance($nums) {
    $v = 0;
    $average = average($nums);

    $len = count($nums);
    for ($i = 0; $i < $len; $i++)
        $v += pow($nums[$i] - $average, 2);

    return $v / $len;
}

function standard_deviation($nums) {
    return sqrt(variance($nums));
}

while (true) {
    fscanf(STDIN, "%d", $noitem);
    if ($noitem == 0)
        break;

    $nums = array_map("intval", explode(" ", trim(fgets(STDIN))));
    $standard_deviation = standard_deviation($nums);

    printf("%.6f\n", $standard_deviation);
}
