#!/bin/bash

# Define our variables
USER="perlguy9"
HOST="iad1-shared-e1-02.dreamhost.com"
REMOTE_DIR="/perlguy.net"
LOCAL_DIR="/Users/brent/Development/IgniteWebSites/Ignite/PerlguySite/Build"

# Sync files using rsync
rsync -avz --delete $LOCAL_DIR $USER@$HOST:$REMOTE_DIR

