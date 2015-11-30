<?php
fgets(STDIN);
$rawnums = fgets(STDIN);
$nums = explode(' ', $rawnums);
$nums = array_map("trim", $nums);
$nums = array_reverse($nums);

printf("%s\n", implode(' ', $nums));
