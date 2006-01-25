#!perl -T

use Test::More tests => 1;

BEGIN {
	use_ok( 'DBIx::Class::AlwaysRS' );
}

diag( "Testing DBIx::Class::AlwaysRS $DBIx::Class::AlwaysRS::VERSION, Perl $], $^X" );
