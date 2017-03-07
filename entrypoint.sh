#!/usr/bin/env sh

# set shell settings (see https://sipb.mit.edu/doc/safe-shell/)
set -euf

# start virtual display server on port 99 (required e.g. for running tests)
Xvfb :99 -screen 0 1024x768x24 2>/dev/null &

# execute specified command
exec "$@"
