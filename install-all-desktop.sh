#!/bin/bash
#
# essential apps
sudo apt-get install -y \
chromium-browser \
chromium-codecs-ffmpeg-extra \
ffmpeg \
filezilla \
gimp \
git-core \
graphicsmagick \
htop \
indicator-multiload \
libappindicator1 \
mariadb-server \
maven \
openjdk-8-jdk \
openjdk-8-source \
openjdk-8-doc \
p7zip-full \
samba \
vim \
vlc \
lib32z1 \
lib32stdc++6

# codecs
sudo apt-get install \ 
gstreamer1.0-alsa \
gstreamer1.0-clutter
gstreamer1.0-libav \
gstreamer1.0-nice \
gstreamer1.0-plugins-bad-videoparsers \
gstreamer1.0-plugins-base \
gstreamer1.0-plugins-base-apps \
gstreamer1.0-plugins-good \
gstreamer1.0-pulseaudio \
gstreamer1.0-tools \
gstreamer1.0-x

wallpapers=(
  ubuntu-wallpapers-artful 
  ubuntu-wallpapers-karmic 
  ubuntu-wallpapers-lucid 
  ubuntu-wallpapers-maverick 
  ubuntu-wallpapers-natty 
  ubuntu-wallpapers-oneiric 
  ubuntu-wallpapers-precise 
  ubuntu-wallpapers-quantal 
  ubuntu-wallpapers-raring 
  ubuntu-wallpapers-saucy 
  ubuntu-wallpapers-trusty 
  ubuntu-wallpapers-utopic 
  ubuntu-wallpapers-vivid 
  ubuntu-wallpapers-wily 
  ubuntu-wallpapers-xenial 
  ubuntu-wallpapers-yakkety 
  ubuntu-wallpapers-zesty
)
sudo apt-get install -y ${wallpapers[@]} 
  
## gpg key ref: https://gist.github.com/ankurk91/c4f0e23d76ef868b139f3c28bde057fc
gpg --gen-key
gpg --list-secret-keys --keyid-format LONG
gpg --armor --export <PASTE_LONG_KEY_HERE> > gpg-key.txt

git config --global user.email "hurelhuyag@gmail.com"
git config --global user.name "Khurelkhuyag"
git config --global user.signingkey <PASTE_LONG_KEY_HERE>
git config --global commit.gpgsign true
