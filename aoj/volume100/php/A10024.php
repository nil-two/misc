<?php
fscanf(STDIN, "%f %f %f %f", $x1, $y1, $x2, $y2);

$distance = sqrt(pow(abs($x2 - $x1), 2) + pow(abs($y2 - $y1), 2));

printf("%.6f\n", $distance);
