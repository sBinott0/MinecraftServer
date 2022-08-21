FROM alpine:latest

ARG java

RUN apk update && \
    apk upgrade && \
    apk add openjdk${java}-jre-headless
    
WORKDIR minecraft

ARG forge_ver

ARG forge_sub

ARG mem

RUN wget https://maven.minecraftforge.net/net/minecraftforge/forge/${forge_ver}-${forge_sub}/forge-${forge_ver}-${forge_sub}-installer.jar && \
    java -jar forge-${forge_ver}-${forge_sub}-installer.jar --installServer && \
    chmod +x run.sh && \
    ./run.sh && \
    sed -i 's/false/true/g' eula.txt && \
    echo -Xmx${mem} > user_jvm_args.txt

EXPOSE 25565

CMD ./run.sh
