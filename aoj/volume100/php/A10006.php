<?php
for ($i=1;;$i++) {
    fscanf(STDIN, "%d", $n);
    if ($n === 0)
        break;

    echo "Case $i: $n\n";
}
