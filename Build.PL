use strict;
use warnings;
use Module::Build;


my $builder = Module::Build->new(
    module_name         => 'POE::Component::WebService::Validator::CSS::W3C',
    license             => 'perl',
    dist_author         => 'Zoffix Znet <zoffix@cpan.org>',
    dist_version_from   => 'lib/POE/Component/WebService/Validator/CSS/W3C.pm',
    build_requires => {
        'Test::More' => 0,
    },
    requires => {
        'Carp'                            => 1.04,
        'URI'                             => 1.35,
        'WebService::Validator::CSS::W3C' => 0.2,
        'POE'                             => 0.9999,
        'POE::Wheel::Run'                 => 1.2179,
        'POE::Filter::Reference'          => 1.2187,
        'POE::Filter::Line'               => 1.1920,
        'LWP::UserAgent'                  => 2.036,
        'perl'                            => '5.006',
    },
    configure_requires => { 'Module::Build' => 0 },
    add_to_cleanup      => [ 'POE-Component-WebService-Validator-CSS-W3C-*' ],
    create_makefile_pl => 'traditional',
);
if ( $ENV{RELEASE_TESTING} ) {
    system('pod2text lib/POE/Component/WebService/Validator/CSS/W3C.pm > README');
}

$builder->create_build_script();






