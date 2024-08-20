#!/bin/bash

# remove random packages
dnf remove yelp gnome-maps mediawriter cheese gnome-tour rhythmbox simple-scan gnome-connections

# remove system extensions
dnf remove gnome-shell-extension-background-logo gnome-classic-session gnome-extensions-app

# install basic extensions
dnf install gnome-shell-extension-appindicator gnome-shell-extension-caffeine gnome-shell-extension-dash-to-dock gnome-shell-extension-user-theme

# install basic packages
dnf install gnome-tweaks

# snaps setup
dnf install snapd gnome-software-plugin-snap -y
systectl enable snapd

# tema adw-gtk
dnf install adw-gtk3-theme
gsettings set org.gnome.desktop.interface gtk-theme "Adw-gtk3-dark" && gsettings set org.gnome.desktop.interface color-scheme 'prefer-dark'

# TODO #
# Yaru theme