<?php
fscanf(STDIN, "%d %d", $a, $b);

if ($a == $b) {
    echo "a == b\n";
} else if ($a < $b){
    echo "a < b\n";
} else if ($a > $b){
    echo "a > b\n";
}
