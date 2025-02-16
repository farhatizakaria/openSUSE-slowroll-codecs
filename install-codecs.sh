#!/bin/bash

# Add the Packman repository for openSUSE Slowroll
sudo zypper addrepo -cfp 90 'https://ftp.gwdg.de/pub/linux/misc/packman/suse/openSUSE_Slowroll/' packman

# Refresh repositories
sudo zypper refresh

# Install multimedia codecs and ffmpeg from Packman
sudo zypper install -y --allow-vendor-change --from packman \
    ffmpeg \
    gstreamer-plugins-good \
    gstreamer-plugins-bad \
    gstreamer-plugins-ugly \
    gstreamer-plugins-libav \
    libavcodec \
    vlc-codecs

echo "Installation completed successfully!"
