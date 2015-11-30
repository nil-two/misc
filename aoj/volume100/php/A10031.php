<?php

fgets(STDIN);
$s = array_map("intval", explode(" ", fgets(STDIN)));
sort($s, SORT_NUMERIC);

fgets(STDIN);
$t = array_map("intval", explode(" ", fgets(STDIN)));
sort($t, SORT_NUMERIC);

$c = count(array_unique(array_intersect($s, $t)));

echo "$c\n";
