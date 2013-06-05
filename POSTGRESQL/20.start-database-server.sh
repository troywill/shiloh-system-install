#!/bin/sh

sudo su - postgres --command 'initdb -D "/var/lib/postgres/data"'
