use strict;
use warnings;

use Test::Builder::Tester tests => 14;
use Test::More;

# Test using the module.
use_ok 'Test::Numeric';

# is_integer
ok( Test::Numeric::_test_integer($_), "_test_integer( $_ )" )
  for ( -3, 0, 1, 100, 1.00 );

ok( !Test::Numeric::_test_integer($_), "_test_integer( $_ )" )
  for ( -3.1, 0.3, 1.001, 100.123 );

test_out('ok 1 - integer');
is_integer( 1, 'integer' );
test_test('is_integer');

test_out('not ok 1 - integer');
test_fail(1);
is_integer( 1.5, 'integer' );
test_test('is_integer');

test_out('ok 1 - integer');
isnt_integer( 1.5, 'integer' );
test_test('isnt_integer');

test_out('not ok 1 - integer');
test_fail(1);
isnt_integer( 1, 'integer' );
test_test('isnt_integer');

