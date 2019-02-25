FROM ubuntu:16.04

RUN	apt-get update && \
	apt-get install -y ca-certificates openssh-server curl postfix

WORKDIR /tmp
RUN curl -LO https://packages.gitlab.com/install/repositories/gitlab/gitlab-ce/script.deb.sh && \
	bash script.deb.sh && \
	apt-get install -y gitlab-ce

RUN	apt update && apt install -y tzdata && \
	apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

EXPOSE 443 80 22

ENTRYPOINT (/opt/gitlab/embedded/bin/runsvdir-start &) && gitlab-ctl reconfigure && tail -f /dev/null

# docker build -t ex03 ex03
# docker run --name ex03 -d -p 8443:443 -p 8080:80 -p 8022:22 ex03
