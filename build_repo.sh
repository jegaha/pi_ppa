#!/usr/bin/env sh

gpg --import ./my-private-key.asc
cd docs

# Packages & Packages.gz
dpkg-scanpackages --multiversion . > Packages
gzip -k -f Packages

# Release, Release.gpg & InRelease
apt-ftparchive release . > Release
gpg --default-key "jens@gabrikowski.de" -abs -o - Release > Release.gpg
gpg --default-key "jens@gabrikowski.de" --clearsign -o - Release > InRelease
