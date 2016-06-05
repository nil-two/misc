use strict;
use warnings;

sub vv {
    my $m  = shift;
    my $km = $m / 1000;
    return "00"                                if $km < 0.1;
    return sprintf "%02d", $km * 10            if $km <= 5;
    return sprintf "%d",   $km + 50            if $km <= 30;
    return sprintf "%d",   ($km - 30) / 5 + 80 if $km <= 70;
    return "89";
}

my $m = <STDIN>;
print "@{[ vv($m) ]}\n";
