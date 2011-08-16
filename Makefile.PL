use inc::Module::Install;
name 'App-Ikachan';
all_from 'lib/App/Ikachan.pm';
readme_from 'lib/App/Ikachan.pm';
readme_markdown_from 'lib/App/Ikachan.pm';
githubmeta;

# requires '';

tests 't/*.t';
author_tests 'xt';

build_requires 'Test::More';
auto_set_repository;
auto_include;
WriteAll;
