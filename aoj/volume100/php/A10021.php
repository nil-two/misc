<?php
$words = [];

fgets(STDIN);
while (true) {
    $word = fgets(STDIN);
    if (!$word)
        break;

    array_push($words, $word);
}

sort($words);

echo "$words[0]";
