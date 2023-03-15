source basics.sh

sudo useradd -m testuser
sudo -iu testuser bash -ic "cd $(pwd) && bash set_up.sh"

sudo -iu testuser bash -ic "cd $(pwd) && bash srcml.sh"
