package App::Ikachan;
use strict;
use warnings;
our $VERSION = '0.09';

1;
__END__

=head1 NAME

ikachan - IRC message delivery by HTTP

=head1 SYNOPSIS

  # connect to chat.freenode.net
  ikachan -S chat.freenode.net

=head1 OPTIONS

=over 4

=item -o, --host

The interface a TCP based server daemon binds to. Defauts to undef,
which lets most server backends bind the any (*) interface. This
option doesn't mean anything if the server does not support TCP
socket.

=item -p, --port (default: 4979)

The port number a TCP based server daemon listens on. Defaults to
5000. This option doesn't mean anything if the server does not support
TCP socket.

=item -S, --Server

irc server address.

=item -P, --Port (default: 6667)

irc server port.

=item -K, --Keyword

irc server password

=item -N, --Nickname

irc nickname

=item -U, --User

irc user name

=item -r, --reverse-proxy

treat X-Forwarded-For as REMOTE_ADDR if REMOTE_ADDR match this argument.

see L<Plack::Middleware::ReverseProxy>.

=item -i, --interval

irc post interval. for Excess Flood

=item -R, --reconnect-interval

interval of reconnect to irc server.
exit application if interval == 0.

=item -j, --no-post-with-join

disable to irc message post with channel join

=back

=head1 AUTHOR

Kazuhiro Osawa E<lt>yappo {at} shibuya {dot} plE<gt>

=head1 SEE ALSO

L<AnySan::Provider::IRC>, L<Twiggy>

=head1 LICENSE

This library is free software; you can redistribute it and/or modify
it under the same terms as Perl itself.

=cut
