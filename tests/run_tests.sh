source basics.sh

useradd -m testuser
sudo -iu testuser bash -c "cd $(pwd) && bash setup.sh"

sudo -iu testuser bash -c "cd $(pwd) && bash srcml.sh"
