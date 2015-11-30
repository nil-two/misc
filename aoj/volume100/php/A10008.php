<?php
fscanf(STDIN, "%f %f", $a, $b);
printf("%d %d %.6f\n",
    $a / $b,
    $a % $b,
    $a / $b);
