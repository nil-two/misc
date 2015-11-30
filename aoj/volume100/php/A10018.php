<?php
$text = fgets(STDIN);

$toggled_text = strtolower($text) ^ strtoupper($text) ^ $text;

echo $toggled_text;
