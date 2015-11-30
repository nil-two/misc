<?php
fscanf(STDIN, "%f", $r);

$area = pi() * $r**2;
$perimeter = 2 * pi() * $r;

printf("%.6f %.6f\n",
    $area, $perimeter);
