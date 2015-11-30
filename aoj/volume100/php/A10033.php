<?php

fscanf(STDIN, "%d", $nostack);

$stacks = [];
for ($i = 0; $i < $nostack; $i++)
    $stacks[$i] = [];

while (true) {
    fscanf(STDIN, "%s %s %s", $instruction, $arg1, $arg2);
    if ($instruction === "quit")
        break;

    switch ($instruction) {
    case "push":
        $index = $arg1 - 1;
        $block = $arg2;
        array_push($stacks[$index], $block);
        break;
    case "pop":
        $index = $arg1 - 1;
        $block = array_pop($stacks[$index]);
        echo "$block\n";
        break;
    case "move":
        $src_index = $arg1 - 1;
        $dst_index = $arg2 - 1;
        $block = array_pop($stacks[$src_index]);
        array_push($stacks[$dst_index], $block);
        break;
    }
}
