#!/bin/bash

echo Change runlevel from 3 to 5

sudo systemctl set-default graphical.target

echo Enable SDDM Login Manager

sudo systemctl enable sddm

sudo zypper remove -y icewm

echo REBOOTING

sudo reboot
