<?php

fscanf(STDIN, "%d", $n);

$score_a = 0;
$score_b = 0;
for ($i = 0; $i < $n; $i++) {
    fscanf(STDIN, "%s %s", $card_a, $card_b);
    if ($card_a === $card_b) {
        $score_a += 1;
        $score_b += 1;
    } else if ($card_a > $card_b) {
        $score_a += 3;
    } else if ($card_a < $card_b) {
        $score_b += 3;
    }
}

echo "$score_a $score_b\n";
