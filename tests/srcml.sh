source basics.sh

cd ~
wget https://github.com/srcML/srcMLReleases/raw/main/srcml_1.0.0-1_ubuntu20.04.deb
aptli srcml_1.0.0-1_ubuntu20.04.deb
srcml -V
