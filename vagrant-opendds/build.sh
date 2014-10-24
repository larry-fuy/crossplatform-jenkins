#!/bin/sh

error() {
    echo "$@" 1>&2
}

fail() {
    error "$@" && exit 1
}

print_usage() {
    printf "Usage: build [autobuild | configure]\n"
    printf "Build Vagrant box to run OpenDDS\n"
}

# provisioning
vagrant up

# repacking a box
vagrant package --base open_dds --output dds.box 
vagrant box add -f --name dds ./dds.box

# clean
vagrant destroy

