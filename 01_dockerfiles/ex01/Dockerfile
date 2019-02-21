FROM debian

# Accept license
ENV TS3SERVER_LICENSE=accept

# Ports to which container will listen to at runtime
EXPOSE 9987/udp 10011 30033

WORKDIR /home/teamspeak

# Installing wget, bzip2 and untar tm_server
RUN	apt-get update && \
	apt-get	install -y wget bzip2 && \
	wget https://files.teamspeak-services.com/releases/server/3.6.1/teamspeak3-server_linux_amd64-3.6.1.tar.bz2 && \
	tar xjf teamspeak3-server_linux_amd64-3.6.1.tar.bz2

ENTRYPOINT sh teamspeak3-server_linux_amd64/ts3server_minimal_runscript.sh

# docker build -t ex01
# docker run --name tm -p 9987:9987/udp -p 10011:10011 -p 30033:30033 ex01
