#!/bin/bash
set -o errexit
set -o nounset
. ./simplelib.sh
$CPAN_INSTALLER Text::CSV
$CPAN_INSTALLER ConfigReader::Simple
$CPAN_INSTALLER DBD::SQLite
$CPAN_INSTALLER DBD::CSV

exit

At least these Perl modules are needed to run Stowball

1. Text/CSV.pm ( Text-CSV )
2. ConfigReader/Simple.pm
3. DBD/SQLite.pm
4. DBD/CSV
