#!/bin/sh

rm -f /tmp/fish_fish_deb
mkdir /tmp/fish_fish_deb
git archive --format=tar fish_fish | tar -x -C /tmp/fish_fish_deb
cd /tmp/fish_fish_deb
./configure
make
sudo checkinstall make install