use strict;
use warnings;
use Slurp;

# Slurp up the files we want.
my $module = slurp("lib/Test/Numeric.template");
my $insert = slurp("t/pod-synopsis.t");

# Add a space to all lines in insert.
$insert =~ s/^/ /mg;

# Sub in the insert into the module.
$module =~ s/INSERT_FILE_HERE/$insert/;

# Write the finished module.
open FILE, ">lib/Test/Numeric.pm" || die $!;
print FILE $module;
close FILE;
