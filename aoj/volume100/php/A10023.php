<?php

while (true) {
    $chars = trim(fgets(STDIN));
    if ($chars == "-")
        break;

    fscanf(STDIN, "%d", $noshuffle);
    for ($i = 0; $i < $noshuffle; $i++) {
        fscanf(STDIN, "%d", $h);
        $chars = substr($chars, $h, strlen($chars)) . substr($chars, 0, $h);
    }
    echo "$chars\n";
}
