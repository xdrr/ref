#!/bin/bash
# Install Ref

## Check ref is still there
if [ ! -f "bin/ref" ];
then
    echo "Project is corrupt. Git clone this project again!"
    exit 1
fi

echo "Installing ref as a symlink to the project folder..."

if [ -d "/usr/local/bin" ];
then
    sudo ln -s $PWD/bin/ref /usr/local/bin/ref
elif [ -d "/usr/share/bin" ];
then
    sudo ln -s $PWD/bin/ref /usr/share/bin/ref
elif [ -d "/usr/bin" ];
then
    sudo ln -s $PWD/bin/ref /usr/bin/ref
else
    echo "Can't find a place to install ref. Try installing it manually."
    exit 1
fi
