use strict;
use warnings;

use Test::Numeric tests => 8;

# The following functions are all exported by Test::Numeric

is_number '12.34e56', "valid number";
isnt_number 'test',   "not a number";

is_even 2, "an even number";
is_odd 3,  "an odd number";

is_integer '123',      'an integer';
isnt_integer '123.45', 'not an integer';

is_formatted '1-.2',   '123.45';
isnt_formatted '1-.2', '123.4';
