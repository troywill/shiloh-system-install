#!/bin/bash
set -o nounset
USER=$1
# curl -i -u <your_username> https://api.github.com/users/defunkt
curl --include --user  ${USER} https://api.github.com/user/repos


