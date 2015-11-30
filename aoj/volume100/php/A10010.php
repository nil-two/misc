<?php
while (true) {
    fscanf(STDIN, "%d %s %d", $a, $op, $b);
    if ($op === "?")
        break;

    $result = 0;
    switch ($op) {
    case "+":
        $result = $a + $b;
        break;
    case "-":
        $result = $a - $b;
        break;
    case "*":
        $result = $a * $b;
        break;
    case "/":
        $result = $a / $b;
        break;
    }
    printf("%d\n", $result);
}
