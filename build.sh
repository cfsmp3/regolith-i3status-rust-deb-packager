#!/usr/bin/env bash

mkdir -p packaging
rm -rf packaging/*

docker build -t regolith_i3status_rust/packager:latest .
docker run --user $(id -u):$(id -g) -v $(pwd)/packaging:/packaging -t regolith_i3status_rust/packager

echo "Remember to sign (run debsign from inside the source directory)"
