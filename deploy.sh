#!/bin/bash

# Define our variables
USER="perlguy9"
HOST="iad1-shared-e1-02.dreamhost.com"
REMOTE_DIR="~/IgniteSite"
LOCAL_DIR="Build"

# Ensure the known_hosts file exists and add the Dreamhost server to it
ssh-keyscan $HOST >> ~/.ssh/known_hosts

# Sync files using rsync
rsync -avz --delete $LOCAL_DIR $USER@$HOST:$REMOTE_DIR


