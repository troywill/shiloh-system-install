#!/bin/bash

set -o errexit
set -o nounset
set -o verbose

SERVICE="tomcat7"
systemctl enable ${SERVICE} && systemctl start ${SERVICE}
