#!/bin/bash

sudo zypper in -y python313-pipx opi

sudo opi -n codecs 
sudo opi -n aylurs-gtk-shell 
sudo opi -n aylurs-gtk-shell-devel 
sudo opi -n bibata-cursors 
sudo opi -n bibata-cursor-theme 
sudo opi -n nautilus-open-any-terminal 
sudo opi -n papirus-icon-theme 
sudo opi -n qt6-wayland 
sudo opi -n qt6-wayland-devel 
sudo opi -n libqt5-qtwayland 
sudo opi -n libqt5-qtwayland-devel 
sudo opi -n google-chrome 
sudo opi -n vscode 

echo Running pipx to install hyprshade, pyfox, pywal16

pipx install hyprshade
pipx install pywal16
pipx install pyfox

echo Installing Waypaper dependencies

sudo zypper in -y python313-pycairo-devel python313-gobject-devel

echo Installing Waypaper

pipx install waypaper

echo Setting up AGS

ags --init

sudo zypper in -y flatpak
sudo zypper remove -y icewm

./flatpak.sh
