#!/bin/bash

function update_and_upgrade()
{
    sudo apt-get update
    sudo apt-get upgrade -y    
}


function install_dependencies()
{
    sudo apt install vim -y
    sudo apt install sqlite3 -y
}


function install_docker()
{
    # https://phoenixnap.com/kb/docker-on-raspberry-pi
    curl -fsSL https://get.docker.com -o get-docker.sh
    sudo sh get-docker.sh
}


function add_me_to_docker_group()
{
    DOCKER_GROUP_NAME="docker"

    echo -e "adding '$(whoami)' user to '${DOCKER_GROUP_NAME}' group"
    sudo usermod -aG $DOCKER_GROUP_NAME $(whoami)
    # sudo gpasswd -d $(whoami) docker
    # cat /etc/group | grep docker
}



# setup dir vars
SETUP_DIR_NAME="dependencies_dir"
SETUP_DIR_PATH="${PWD}/${SETUP_DIR_NAME}"

if [[ ! -d $SETUP_DIR_PATH ]]; then
    mkdir $SETUP_DIR_PATH
fi

# first time setup
cd $SETUP_DIR_PATH
update_and_upgrade
install_dependencies
install_docker
add_me_to_docker_group

sudo reboot