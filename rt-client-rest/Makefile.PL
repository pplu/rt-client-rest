use inc::Module::Install 0.91;
use strict;

name 'RT-Client-REST';
all_from 'lib/RT/Client/REST.pm';
license 'perl';

requires 'Encode'                => 0;
requires 'Error'                 => 0;
requires 'Exception::Class'      => 0;
requires 'HTTP::Cookies'         => 0;
requires 'HTTP::Request::Common' => 0;
requires 'LWP'                   => 0;
requires 'Params::Validate'      => 0;
requires 'DateTime'              => 0;
requires 'DateTime::Format::DateParse' => 0;
requires 'URI'                   => 0;

test_requires 'Test::More';
test_requires 'Test::Exception'       => 0;

resources repository => 'http://rt-client-rest.googlecode.com/svn/trunk/';

WriteAll;

