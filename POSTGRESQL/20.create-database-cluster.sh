#!/bin/sh

sudo su - postgres --command 'initdb -D "/var/lib/postgres/data"'
# Success. You can now start the database server using:

#     postgres -D /var/lib/postgres/data
# or
#     pg_ctl -D /var/lib/postgres/data -l logfile start
