<?php
$w = trim(strtolower(fgets(STDIN)));

$count = 0;
while (true) {
    $text = trim(fgets(STDIN));
    if ($text === "END_OF_TEXT")
        break;

    foreach (explode(" ", $text) as $t)
        if (strtolower($t) === $w)
            $count++;
}

echo "$count\n";
