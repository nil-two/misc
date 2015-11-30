<?php

$stack = [];

while (true) {
    fscanf(STDIN, "%s %s", $instruction, $block);
    if ($instruction === "quit")
        break;

    switch ($instruction) {
    case "push":
        array_push($stack, $block);
        break;
    case "pop":
        $block = array_pop($stack);
        echo "$block\n";
    }
}
