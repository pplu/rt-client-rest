#!/usr/bin/perl
#
# create_ticket.pl -- create an RT ticket.

use strict;
use warnings;

use RT::Client::REST;
use RT::Client::REST::Ticket;

unless (@ARGV >= 3) {
    die "Usage: $0 username password queue subject\n";
}

my $rt = RT::Client::REST->new(
    server  => ($ENV{RTSERVER} || 'http://rt.cpan.org'),
);
$rt->login(
    username=> shift(@ARGV),
    password=> shift(@ARGV),
);

my $ticket = RT::Client::REST::Ticket->new(
    rt  => $rt,
    queue   => shift(@ARGV),
    subject => shift(@ARGV),
)->store;

use Data::Dumper;
print Dumper($ticket);
