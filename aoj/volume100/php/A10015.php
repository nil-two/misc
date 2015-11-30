<?php
$kinds = ["S", "H", "C", "D"];
$indexes = range(1, 13);

$cards = [];
foreach ($kinds as $kind)
    foreach ($indexes as $index)
        $cards[$kind . $index] = true;

unset($kind, $index);

fscanf(STDIN, "%d", $nocards);
for ($i = 0; $i < $nocards; $i++) {
    fscanf(STDIN, "%s %d", $kind, $index);
    $cards[$kind . $index] = false;
}

foreach ($kinds as $kind)
    foreach ($indexes as $index)
        if ($cards[$kind . $index])
            printf("%s %d\n", $kind, $index);
