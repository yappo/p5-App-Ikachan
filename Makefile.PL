use inc::Module::Install;
name 'App-Ikachan';
all_from 'lib/App/Ikachan.pm';
readme_from 'lib/App/Ikachan.pm';
readme_markdown_from 'lib/App/Ikachan.pm';
githubmeta;

requires 'Plack::Middleware::ReverseProxy';
requires 'Plack::Builder::Conditionals';
requires 'AnySan' => '0.07';
requires 'Twiggy';

tests 't/*.t';
author_tests 'xt';

install_script 'bin/ikachan';

build_requires 'Test::More';
auto_set_repository;
WriteAll;
