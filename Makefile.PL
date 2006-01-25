use strict;
use warnings;
use ExtUtils::MakeMaker;

WriteMakefile(
    NAME                => 'DBIx::Class::AlwaysRS',
    AUTHOR              => 'Marcus Ramberg <marcus@thefeed.no>',
    VERSION_FROM        => 'lib/DBIx/Class/AlwaysRS.pm',
    ABSTRACT_FROM       => 'lib/DBIx/Class/AlwaysRS.pm',
    PL_FILES            => {},
    PREREQ_PM => {
        'Test::More' => 0,
    },
    dist                => { COMPRESS => 'gzip -9f', SUFFIX => 'gz', },
    clean               => { FILES => 'DBIx-Class-AlwaysRS-*' },
);
