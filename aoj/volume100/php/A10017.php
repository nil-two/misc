<?php
while (true) {
    fscanf(STDIN, "%d %d", $n, $x);
    if ($n == 0 && $x == 0)
        break;

    $cnt = 0;
    for ($v1 = 1; $v1 <= $n; $v1++)
        for ($v2 = $v1+1; $v2 <= $n; $v2++)
            for ($v3 = $v2+1; $v3 <= $n; $v3++)
                if ($v1 + $v2 + $v3 == $x)
                    $cnt++;

    echo "$cnt\n";
}
