<?php

$counts = [];
foreach (range('a', 'z') as $char)
    $counts[$char] = 0;

while (true) {
    $text = strtolower(fgets(STDIN));
    if (!$text)
        break;

    $len = strlen($text);
    for ($i = 0; $i < $len; $i++)
        if ('a' <= $text[$i] && $text[$i] <= 'z')
            $counts[$text[$i]]++;
}

foreach (range('a', 'z') as $char)
    printf("%s : %d\n", $char, $counts[$char]);
