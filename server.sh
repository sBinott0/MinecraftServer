#!/bin/bash

echo Welcome to the quick setup script$'\n'

read -p "Which version of OpenJDK do you want to use (only the number, you can check which is the latest here https://pkgs.alpinelinux.org/packages?name=openjdk*-jre-head*&branch=edge&repo=community&arch=x86_64&maintainer=)?"$'\n' java

read -p "Which version of Forge do you want to use (only the version of the game, e.g. 1.19.2)"$'\n' forge_ver

read -p "Which build of Forge do you want to use (you can check it here https://files.minecraftforge.net/net/minecraftforge/forge/index_"$forge_ver".html)"$'\n' forge_sub

read -p "How many memory do you want to concede to the server (In gigabytes. You can change it manually in the container)"$'\n' mem

read -p "Which is going to be the name of this image (name:version)?"$'\n' image

docker build -t $image --build-arg java=$java --build-arg forge_ver=$forge_ver --build-arg forge_sub=$forge_sub --build-arg mem=$mem .


