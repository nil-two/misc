<?php
while (true) {
    fscanf(STDIN, "%d %d", $h, $w);
    if ($h == 0 && $w == 0)
        break;

    $columns = [];
    for ($i = 0; $i < $h; $i++)
        array_push($columns, str_repeat("#", $w));

    printf("%s\n\n",
        implode("\n", $columns));
}
