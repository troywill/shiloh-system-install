#!/bin/bash
set -o errexit
# set -o nounset

EDITOR="emacs --no-window-system"

cat >> /etc/profile <<"EOF"
# PERL5_VERSION='5.14.2'
# PERL6_VERSION='2012-01'
# RUBY_VERSION="1.9.3-p0"
# PERL5_PATH="/usr/local/bin/perl-${PERL5_VERSION}"
# PERL6_PATH="/usr/local/bin/perl-${PERL6_VERSION}"
# RUBY_PATH="/usr/local/bin/ruby-${RUBY_VERSION}"
# TDW_PATH='/usr/local/bin/tdw'
# PATH="${TDW_PATH}:${PERL5_PATH}:${PERL6_PATH}:${RUBY_PATH}:/usr/local/bin:/usr/bin:/bin:/usr/local/sbin:/usr/sbin:/sbin"
EOF

${EDITOR} /etc/profile
