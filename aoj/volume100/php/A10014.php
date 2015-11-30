<?php
while (true) {
    fscanf(STDIN, "%d %d", $h, $w);
    if ($h == 0 && $w == 0)
        break;

    $columns = [];
    for ($y = 0; $y < $h; $y++) {
        $column = [];
        for ($x = 0; $x < $w; $x++)
            array_push($column, (($x + $y) % 2 == 0)? "#": ".");
        array_push($columns, implode('', $column));
    }

    printf("%s\n\n",
        implode("\n", $columns));
}
