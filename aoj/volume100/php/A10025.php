<?php
fscanf(STDIN, "%f %f %f", $a, $b, $deg_c);

$rad_c = $deg_c * pi() / 180.0;
$c = sqrt(pow($a, 2) + pow($b, 2) - 2*$a*$b*cos($rad_c));

$area      = $a * $b * sin($rad_c) / 2.0;
$perimeter = $a + $b + $c;
$h         = 2 * $area / $a;

printf("%.6f\n%.6f\n%.6f\n", $area, $perimeter, $h);
