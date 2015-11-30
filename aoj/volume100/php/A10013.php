<?php
while (true) {
    fscanf(STDIN, "%d %d", $h, $w);
    if ($h == 0 && $w == 0)
        break;

    $columns = [];
    array_push($columns, str_repeat("#", $w));
    for ($i = 1; $i < $h-1; $i++)
        array_push($columns, "#" . str_repeat(".", $w-2) . "#");
    array_push($columns, str_repeat("#", $w));

    printf("%s\n\n",
        implode("\n", $columns));
}
