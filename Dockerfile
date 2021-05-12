FROM debian

RUN apt-get update && apt-get install -y gnupg apt-utils dpkg-dev
