#!/bin/sh

apt-get.update.once-everyday
sudo apt-get build-dep vim -y
sudo apt-get install -y\
  mercurial \
  gettext \
  libncurses5-dev \
  libacl1-dev \
  libgpm-dev \
  libxmu-dev \
  libgnomeui-dev \
  libgtk2.0-dev \
  libxpm-dev \
  libperl-dev \
  python-dev \
  python3-dev \
  ruby-dev \
  lua5.2 \
  liblua5.2-dev \
  luajit libluajit-5.1-dev \
  autoconf \
  automake \
  cproto

cd $HOME/repos
if [ -d vim ]; then
  cd vim
  hg pull -u
else
  hg clone http://vim.googlecode.com/hg vim
  cd vim
fi

cd src

make clean

./configure \
   --enable-fail-if-missing \
   --enable-gui=gnome2 \
   --with-features=huge \
   --enable-perlinterp \
   --enable-pythoninterp \
   --enable-python3interp \
   --enable-rubyinterp \
   --enable-luainterp \
   --with-luajit \
   --prefix=/usr/local/ \

make -j$(grep -c ^processor /proc/cpuinfo)
sudo make install

