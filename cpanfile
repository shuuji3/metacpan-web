use strict;
use warnings;

requires 'Capture::Tiny';
requires 'Carton', '1.0.34';
requires 'Catalyst', '5.90103';
requires 'Catalyst::Action::RenderView';
requires 'Catalyst::Authentication::Store::Proxy', '0.0.1';
requires 'Catalyst::Authentication::User';
requires 'Catalyst::Model';
requires 'Catalyst::Plugin::Authentication';
requires 'Catalyst::Plugin::ConfigLoader';
requires 'Catalyst::Plugin::Static::Simple';
requires 'Catalyst::TraitFor::Request::REST::ForBrowsers';
requires 'Catalyst::View::JSON';
requires 'Catalyst::View::TT::Alloy';
requires 'CatalystX::Fastly::Role::Response', '0.06';
requires 'Config::General';
requires 'Config::ZOMG', '1.000000';
requires 'Cpanel::JSON::XS';
requires 'CPAN::DistnameInfo', '0.12';
requires 'CPAN::Meta', '2.141520'; # Avoid issues with List::Util dep under carton install.
requires 'Data::Pageset';
requires 'DateTime', '1.24';
requires 'DateTime::Format::HTTP';
requires 'DateTime::Format::ISO8601';
requires 'Devel::Confess';
requires 'Digest::SHA';
requires 'Encode', '2.51';
requires 'Exporter';
requires 'File::Path';
requires 'Future';
requires 'Gazelle';
requires 'Getopt::Long::Descriptive';
requires 'Gravatar::URL';
requires 'Hash::AsObject';
requires 'HTML::Escape';
requires 'HTML::Restrict', '2.2.2';
requires 'HTML::Selector::XPath';
requires 'HTML::Tree';
requires 'HTTP::Message::PSGI';
requires 'HTTP::Request';
requires 'HTTP::Request::Common';
requires 'IO::Async::Loop';
requires 'IO::Async::SSL';
requires 'IO::Socket::SSL';
requires 'JavaScript::Minifier::XS';
requires 'List::Util', '1.45';
requires 'Locale::Country','3.62';
requires 'Log::Dispatch';
requires 'Log::Log4perl::Catalyst';
requires 'Log::Log4perl::Layout::JSON';
requires 'MetaCPAN::Moose';
requires 'MetaCPAN::Role', '0.06';
requires 'Module::Build::Tiny', '0.037';
requires 'Module::Runtime';
requires 'Moo', '2.000002';
requires 'Moose', '2.1605';
requires 'MooseX::Fastly::Role', '0.03';
requires 'Net::Async::HTTP';
requires 'Net::Fastly', '1.05';
requires 'Number::Format';
requires 'Params::ValidationCompiler';
requires 'Path::Tiny', '0.076';
requires 'Plack', '1.0039';
requires 'Plack::Middleware::ReverseProxy';
requires 'Plack::Middleware::Runtime';
requires 'Plack::Middleware::ServerStatus::Lite';
requires 'Plack::Middleware::Session', '0.22';
requires 'Plack::Middleware::Session::Cookie';
requires 'Plack::Session';
requires 'Plack::Test';
requires 'Ref::Util', '>= 0.008';
requires 'Starman', '>= 0.4008';
requires 'Template::Alloy', '== 1.020';
requires 'Term::Size::Any';
requires 'Text::MultiMarkdown';
requires 'Text::Pluralize';
requires 'Try::Tiny', '0.24';
requires 'Type::Library';
requires 'Types::Common::Numeric';
requires 'Types::Common::String';
requires 'Types::Standard';
requires 'Types::URI';
requires 'Type::Utils';
requires 'URI', '1.71';
requires 'URI::Escape';
requires 'With::Roles', '0.001002';
requires 'WWW::Form::UrlEncoded::XS';
requires 'XML::FeedPP';
requires 'YAML', '1.15'; # fix dep chain issue

# Test dependencies
requires 'aliased', '0.34';
requires 'App::Prove';
requires 'Code::TidyAll', '>= 0.74';
requires 'Code::TidyAll::Plugin::Test::Vars', '0.04';
requires 'Path::Iterator::Rule', '1.008';
requires 'Perl::Critic', '1.136';
requires 'Perl::Tidy' => '20210402';
requires 'Test::Code::TidyAll';
requires 'Test::MockObject','1.09';
requires 'Test::More', '0.96';
requires 'Test::Needs';
requires 'Test::Perl::Critic';
requires 'Test::Warnings';
requires 'Test::XPath', '0.15';
