<?php
$nums = [0, 0, 0];
fscanf(STDIN, "%d %d %d", $nums[0], $nums[1], $nums[2]);

sort($nums, SORT_NUMERIC);

printf("%s\n", implode(' ', $nums));
