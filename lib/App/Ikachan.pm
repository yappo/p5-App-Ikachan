package App::Ikachan;
use strict;
use warnings;
our $VERSION = '0.01';

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

=item -N, --Nickname

=item -j, --no-post-with-join

=back

=cut
