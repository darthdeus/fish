set -x PATH /usr/local/bin /usr/local/sbin $PATH
set -x PATH /usr/local/opt/rbenv/bin $PATH
set -x PATH $HOME/.rbenv/shims $PATH

rbenv rehash >/dev/null ^&1
