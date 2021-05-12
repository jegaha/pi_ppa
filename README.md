## PI_PPA

### for creation of deb repo see: https://assafmo.github.io/2019/05/02/ppa-repo-hosted-on-github.html

### to import

  curl -s --compressed "https://jegaha.github.io/pi_ppa/KEY.gpg" | sudo apt-key add -
  sudo curl -s --compressed -o /etc/apt/sources.list.d/pi_ppa.list "https://jegaha.github.io/pi_ppa/pi_ppa.list"
  sudo apt update

