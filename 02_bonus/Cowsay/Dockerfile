FROM debian

RUN apt-get update && \
	apt-get install -y fortune cowsay lolcat

ENTRYPOINT /usr/games/fortune | /usr/games/cowsay -f bong | /usr/games/lolcat

# docker build -t cowsay Cowsay
# docker run --rm --name cowsay -it cowsay
