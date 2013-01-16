use strict;
use Test::More tests => 1;
use Test::riak;

my $riak_base_dir;

{
    my $riak = Test::riak->new or plan 'skip_all' => $Test::riak::errstr;
    sleep 3;
    $riak_base_dir   = $riak->base_dir;
    undef $riak;
}

ok(!-l $riak_base_dir, 'base_dir cleanup done.');
