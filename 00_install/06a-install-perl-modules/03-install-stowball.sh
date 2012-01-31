#!/bin/bash
INSTALLER='cpanp i'
$INSTALLER Text::CSV
$INSTALLER ConfigReader::Simple
$INSTALLER DBD::SQLite
$INSTALLER DBD::CSV

exit

At least these Perl modules are needed to run Stowball

1. Text/CSV.pm ( Text-CSV )
2. ConfigReader/Simple.pm
3. DBD/SQLite.pm
4. DBD/CSV
