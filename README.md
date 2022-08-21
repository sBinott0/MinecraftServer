# MinecraftServer
A quick way to make an image of a Minecraft server with Forge based in Alpine Linux.

To create the image you will have to execute the server.sh file, and answer the following questions:

1-Which version of OpenJDK do you want to use
2-Which version and build of Forge do you want
3-Amount of memory that you will concede to the server

After this, the image will be created and you will be able to create a container with it (the port exposed in the image is the 25565). Whith the container created and opened the server will be up and running, to use it you will have to connect to it with the IP of the host and the port that you used on the host.

To change the configuration of the server, open the container, stop the Minecraft process and edit the server.properties file.
