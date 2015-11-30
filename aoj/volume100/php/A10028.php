<?php
fgets(STDIN);

$nums = array_map("intval", explode(" ", fgets(STDIN)));
sort($nums, SORT_NUMERIC);

printf("%s\n",
    implode(" ", $nums));
