# PI_PPA

## for creation 
of deb repo see: [https://assafmo.github.io/2019/05/02/ppa-repo-hosted-on-github.html]

dpkg-scanpackages --multiversion . > Packages
gzip -k -f Packages

gpg --import my-private-key.asc
apt-ftparchive release . > Release
gpg --default-key "jens@gabrikowski.de" -abs -o - Release > Release.gpg
gpg --default-key "jens@gabrikowski.de" --clearsign -o - Release > InRelease


## to import

  curl -s --compressed "https://jegaha.github.io/pi_ppa/KEY.gpg" | sudo apt-key add -
  sudo curl -s --compressed -o /etc/apt/sources.list.d/pi_ppa.list "https://jegaha.github.io/pi_ppa/pi_ppa.list"
  sudo apt update

