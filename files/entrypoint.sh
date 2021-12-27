#!/usr/bin/env bash

# DONT BE FOOLED BY THE RELEASE BEING A VARIABLE. IT WILL ONLY WORK WITH THIS VERSION
# BECAUSE THERE'S SOME PATCHES THAT DEPEND ON IT. WORKING ON IT.

release="0.20.7ubuntu"
url="https://github.com/cfsmp3/regolith-i3status-rust/archive/refs/tags/v${release}.tar.gz"

mkdir /tmp/cargohome
export CARGO_HOME=/tmp/cargohome

cd /packaging

wget -O "regolith-i3status-rust_${release}.tgz" $url
tar xfz regolith-i3status-rust_${release}.tgz 
mv regolith-i3status-rust_${release}.tgz regolith-i3status-rust_${release}.orig.tar.gz
cp -r /files/debian /packaging/regolith-i3status-rust-${release}/

cd regolith-i3status-rust-${release}/
cargo vendor
dpkg-buildpackage -us -uc
exit 0
