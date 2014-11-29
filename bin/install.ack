#!/bin/sh

sudo apt-get update
sudo apt-get build-dep ack-grep -y
sudo apt-get install -y\
  curl

curl http://beyondgrep.com/ack-2.14-single-file > $HOME/bin/ack && chmod 0755 $HOME/bin/ack

