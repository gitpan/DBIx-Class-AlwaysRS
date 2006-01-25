package DBIx::Class::AlwaysRS;

use warnings;
use strict;

use base qw/DBIx::Class/;

=head1 NAME

DBIx::Class::AlwaysRS - Always return recordsets

=head1 VERSION

Version 0.01

=cut

our $VERSION = '0.01';

=head1 SYNOPSIS


    use DBIx::Class;

    __PACKAGE__->load_components(qw/Core DB AlwaysRS/);

or with DBIC-Loader
	__PACKAGE__->config(additional_base_classes => [qw/DBIx::Class::AlwaysRS/]);
	

=head1 DESCRIPTION 

DBIx::Class uses the wantarray function to determine if you called search in
list context or scalar context, and return a list or a recordset. This module
overrides that functionality to always return a recordset. It can be useful
for example in Template Toolkit, which always operates in list context, or 
if you just like recordsets like me.

=head1 METHODS

=head2 search

overrides search to enforce scalar context.

=cut

sub search {
    scalar shift->next::method(@_);
}

=head1 AUTHOR

Marcus Ramberg, C<< <marcus at thefeed.no> >>

=head1 BUGS

Please report any bugs or feature requests to
C<bug-dbix-class-alwaysrs at rt.cpan.org>, or through the web interface at
L<http://rt.cpan.org/NoAuth/ReportBug.html?Queue=DBIx-Class-AlwaysRS>.
I will be notified, and then you'll automatically be notified of progress on
your bug as I make changes.

=head1 SUPPORT

You can find documentation for this module with the perldoc command.

    perldoc DBIx::Class::AlwaysRS

You can also look for information at:

=over 4

=item * AnnoCPAN: Annotated CPAN documentation

L<http://annocpan.org/dist/DBIx-Class-AlwaysRS>

=item * CPAN Ratings

L<http://cpanratings.perl.org/d/DBIx-Class-AlwaysRS>

=item * RT: CPAN's request tracker

L<http://rt.cpan.org/NoAuth/Bugs.html?Dist=DBIx-Class-AlwaysRS>

=item * Search CPAN

L<http://search.cpan.org/dist/DBIx-Class-AlwaysRS>

=back

=head1 ACKNOWLEDGEMENTS

=head1 COPYRIGHT & LICENSE

Copyright 2006 Marcus Ramberg, all rights reserved.

This program is free software; you can redistribute it and/or modify it
under the same terms as Perl itself.

=cut

1; # End of DBIx::Class::AlwaysRS
