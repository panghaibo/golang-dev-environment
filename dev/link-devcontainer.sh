#!/bin/bash

WORKSPACE_DIR=$(git rev-parse --show-toplevel)

cd $WORKSPACE_DIR

if [ -d ".devcontainer" ]; then
    echo ".devcontainer is a folder, you need remove it first"
    echo "Do you wanna remove it?[y/n]"
    read answer
    if [ "$answer" != "${answer#[Yy]}" ]; then
        rm -vfr .devcontainer
        echo "remove .devcontainer"
    else 
        echo "aborted"
    fi
fi

echo "Linking dev/container to .devcontainer"
ln -sf dev/container .devcontainer

echo "Done"
