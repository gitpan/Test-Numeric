use strict;
use warnings;

use Module::Build;

my $build = Module::Build->new(
    module_name       => "Test::Numeric",
    dist_version_from => 'lib/Test/Numeric.template',
    license           => 'perl',
    requires          => {
        'Test::Builder' => 0,
        'Carp'          => 0,
    },
    build_requires => {
        'Module::Build'         => 0,
        'Pod::Coverage'         => 0,
        'Slurp'                 => 0,
        'Test::Builder::Tester' => 0,
        'Test::More'            => 0,
        'Test::Pod'             => 0,
    },
    dynamic_config => 1,
);

$build->create_build_script;
