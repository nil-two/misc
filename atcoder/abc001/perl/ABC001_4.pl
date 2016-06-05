use strict;
use warnings;

sub floor5 {
    my $n = shift;
    return int($n/5)*5;
}

sub ceil5 {
    my $n = shift;
    return int(($n+4)/5)*5;
}

sub to_time {
    my $t = shift;
    $t = sprintf "%04d", $t;
    $t = sprintf "%02d00", $1+1 if $t =~ /(\d{2})60/;
    return $t;
}

sub to_range {
    my ($start, $end) = @_;
    return +{
        start => to_time(floor5($start)),
        end   => to_time(ceil5($end)),
    }
}

my $ranges = [];
my $n_data = <STDIN>;
for my $record (sort <STDIN>) {
    my ($start, $end) = map(int, split /-/, $record);
    push @$ranges, to_range($start, $end);
}

my $merged_ranges = [];
for my $range (@$ranges) {
    if (@$merged_ranges < 1) {
        push @$merged_ranges, $range;
        next;
    }

    if ($range->{start} > $merged_ranges->[$#$merged_ranges]{end}) {
        push @$merged_ranges, $range;
        next;
    }

    if ($range->{end} > $merged_ranges->[$#$merged_ranges]{end}) {
        $merged_ranges->[$#$merged_ranges]{end} = $range->{end};
        next;
    }
}

for my $range (@$merged_ranges) {
    print "$range->{start}-$range->{end}\n";
}
