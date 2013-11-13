requires 'Plack::Middleware::ReverseProxy';
requires 'Plack::Builder::Conditionals';
requires 'AnySan' => '0.10';
requires 'Twiggy';

on test => sub {
    requires 'Test::More', '0.88';
};