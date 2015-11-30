<?php
while (true) {
    fscanf(STDIN, "%d %d", $a, $b);
    if ($a == 0 && $b == 0)
        break;

    if ($a < $b)
        echo "$a $b\n";
    else
        echo "$b $a\n";
}
