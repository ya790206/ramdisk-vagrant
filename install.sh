#! /bin/bash
source set-env.sh
rm package.box
vagrant package
vagrant box add my package.box --force
vagrant mutate my --input-provider=virtualbox libvirt
