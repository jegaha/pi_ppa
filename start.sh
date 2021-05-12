docker build -t debian-package-builder .
docker run --rm -it -v $PWD:/mnt --workdir /mnt debian-package-builder /mnt/build_repo.sh
