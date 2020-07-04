use strict;
use warnings;

use lib 't/lib';
use Test::More;
use TestContext qw( get_context );
use MetaCPAN::Web::Model::API::Permission;

subtest 'notification_type' => sub {
    my @tests = (
        {
            params   => {},
            expected => undef,
            message  => 'empty hash of data passed'
        },
        {
            params => {
                co_maintainers => [ 'ONE', 'TWO', 'THREE' ]
            },
            expected => undef,
            message =>
                'co_maintainers passed without "special" co_maintainer existing'
        },
        {
            params => {
                module_name    => 'Mod::Name',
                co_maintainers => [ 'ADOPTME', 'ONE', 'TWO', 'THREE' ]
            },
            expected => {
                module_name => 'Mod::Name',
                type        => 'ADOPTME',
            },
            message => 'ADOPTME passed in co_maintainers'
        },
        {
            params => {
                module_name    => 'Mod::Name',
                co_maintainers => [ 'ONE', 'NEEDHELP', 'TWO', 'THREE' ]
            },
            expected => {
                module_name => 'Mod::Name',
                type        => 'NEEDHELP',
            },
            message => 'NEEDHELP passed in co_maintainers'
        },
        {
            params => {
                module_name    => 'Mod::Name',
                owner          => 'LNATION',
                co_maintainers => [ 'ONE', 'TWO', 'THREE', 'HANDOFF' ]
            },
            expected => {
                module_name => 'Mod::Name',
                type        => 'HANDOFF',
            },
            message => 'HANDOFF passed in co_maintainers'
        },
        {
            params => {
                owner => ''
            },
            expected => undef,
            message  => 'Null string as owner',
        },
        {
            params => {
                owner => undef
            },
            expected => undef,
            message  => 'Undef as owner'
        },
        {
            params => {
                owner => 'LNATION'
            },
            expected => undef,
            message  => 'LNATION as owner'
        },
        {
            params => {
                module_name => 'Mod::Name',
                owner       => 'ADOPTME'
            },
            expected => {
                module_name => 'Mod::Name',
                type        => 'ADOPTME',
            },
            message => 'ADOPTME passed as owner'
        },
        {
            params => {
                module_name => 'Mod::Name',
                owner       => 'HANDOFF'
            },
            expected => {
                module_name => 'Mod::Name',
                type        => 'HANDOFF',
            },
            message => 'HANDOFF passed as owner'
        },
        {
            params => {
                module_name => 'Mod::Name',
                owner       => 'NEEDHELP'
            },
            expected => {
                module_name => 'Mod::Name',
                type        => 'NEEDHELP',
            },
            message => 'NEEDHELP passed as owner'
        },
    );

    for my $test (@tests) {
        my $notif
            = MetaCPAN::Web::Model::API::Permission::_permissions_to_notification(
            $test->{params} );
        is_deeply( $notif->get->{notification},
            $test->{expected}, $test->{message} );

    }
};

done_testing;
