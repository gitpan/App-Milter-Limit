package App::Milter::Limit::Log;
$App::Milter::Limit::Log::VERSION = '0.50';

# ABSTRACT: logging functions for App::Milter::Limit

use strict;
use base 'Exporter';
use Sys::Syslog ();

our @EXPORT = qw(debug info);


sub debug {
    Sys::Syslog::syslog('warning', join '', @_);
}



sub info {
    Sys::Syslog::syslog('info', join '', @_);
}

1;



=pod

=head1 NAME

App::Milter::Limit::Log - logging functions for App::Milter::Limit

=head1 VERSION

version 0.50

=head1 SYNOPSIS

 use App::Milter::Limit::Log;

 debug("whatever");
 info("something interesting happened");

=head1 DESCRIPTION

This module provides syslog wrapper functions.  Syslog is setup automatically
when you create a L<App::Milter::Limit> object.  Once that has been done, these
functions can be used for logging purposes.

=head1 FUNCTIONS

=head2 debug @msg

log a message at level debug

=head2 info @msg

log a message at level info

=head2 warn @msg

log a message a level warn.  C<App::Milter::Limit> provides this via C<$SIG{__WARN__}>.

=head1 AUTHOR

  Michael Schout <mschout@cpan.org>

=head1 COPYRIGHT AND LICENSE

This software is copyright (c) 2010 by Michael Schout.

This is free software; you can redistribute it and/or modify it under
the same terms as the Perl 5 programming language system itself.

=cut


__END__

