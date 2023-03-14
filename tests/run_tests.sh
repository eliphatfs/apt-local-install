source basics.sh

sudo useradd -m testuser
sudo -iu testuser bash -c "cd $(pwd) && pwd && ls && bash setup.sh"

sudo -iu testuser bash -c "cd $(pwd) && bash srcml.sh"
