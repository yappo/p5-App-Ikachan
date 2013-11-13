
use strict;
use warnings;

use Module::Build 0.3601;


my %module_build_args = (
  "build_requires" => {
    "Module::Build" => "0.3601"
  },
  "configure_requires" => {
    "Module::Build" => "0.3601"
  },
  "dist_abstract" => "IRC message delivery by HTTP",
  "dist_author" => [
    "Kazuhiro Osawa <yappo {at} shibuya {dot} pl>"
  ],
  "dist_name" => "App-Ikachan",
  "dist_version" => "v0.2.0",
  "license" => "perl",
  "module_name" => "App::Ikachan",
  "recommends" => {},
  "recursive_test_files" => 1,
  "requires" => {
    "AnySan" => "0.10",
    "Plack::Builder::Conditionals" => 0,
    "Plack::Middleware::ReverseProxy" => 0,
    "Twiggy" => 0
  },
  "script_files" => [
    "script/ikachan",
    "script/ikachan_client"
  ],
  "test_requires" => {
    "Test::More" => "0.88"
  }
);


unless ( eval { Module::Build->VERSION(0.4004) } ) {
  my $tr = delete $module_build_args{test_requires};
  my $br = $module_build_args{build_requires};
  for my $mod ( keys %$tr ) {
    if ( exists $br->{$mod} ) {
      $br->{$mod} = $tr->{$mod} if $tr->{$mod} > $br->{$mod};
    }
    else {
      $br->{$mod} = $tr->{$mod};
    }
  }
}

my $build = Module::Build->new(%module_build_args);

$build->create_build_script;
