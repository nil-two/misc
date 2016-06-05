use strict;
use warnings;

sub round {
    my ($n, $digit) = @_;
    my $m = 10 ** (0 - $digit);
    return int($n * $m + 0.5) / $m;
}

sub dir {
    my ($deg, $dis) = @_;
    return "C"   if w($dis) == 0;
    return "NNE" if 112.5  <= $deg && $deg < 337.5;
    return "NE"  if 337.5  <= $deg && $deg < 562.5;
    return "ENE" if 562.5  <= $deg && $deg < 787.5;
    return "E"   if 787.5  <= $deg && $deg < 1012.5;
    return "ESE" if 1012.5 <= $deg && $deg < 1237.5;
    return "SE"  if 1237.5 <= $deg && $deg < 1462.5;
    return "SSE" if 1462.5 <= $deg && $deg < 1687.5;
    return "S"   if 1687.5 <= $deg && $deg < 1912.5;
    return "SSW" if 1912.5 <= $deg && $deg < 2137.5;
    return "SW"  if 2137.5 <= $deg && $deg < 2362.5;
    return "WSW" if 2362.5 <= $deg && $deg < 2587.5;
    return "W"   if 2587.5 <= $deg && $deg < 2812.5;
    return "WNW" if 2812.5 <= $deg && $deg < 3037.5;
    return "NW"  if 3037.5 <= $deg && $deg < 3262.5;
    return "NNW" if 3262.5 <= $deg && $deg < 3487.5;
    return "N";
}

sub w {
    my $dis = shift;
    my $speed = round($dis / 60, -1);
    return 0  if $speed <= 0.2;
    return 1  if $speed <= 1.5;
    return 2  if $speed <= 3.3;
    return 3  if $speed <= 5.4;
    return 4  if $speed <= 7.9;
    return 5  if $speed <= 10.7;
    return 6  if $speed <= 13.8;
    return 7  if $speed <= 17.1;
    return 8  if $speed <= 20.7;
    return 9  if $speed <= 24.4;
    return 10 if $speed <= 28.4;
    return 11 if $speed <= 32.6;
    return 12;
}

my ($deg, $dis) = split / /, <STDIN>;
print "@{[ dir($deg, $dis) ]} @{[ w($dis) ]}\n";
