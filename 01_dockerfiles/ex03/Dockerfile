FROM ubuntu:16.04

RUN	apt-get update && \
	apt-get install -y ca-certificates openssh-server wget postfix

RUN wget https://packages.gitlab.com/install/repositories/gitlab/gitlab-ce/script.deb.sh && \
	chmod 777 script.deb.sh && \
	./script.deb.sh && \
	apt-get install -y gitlab-ce

EXPOSE 443 80 22

ENTRYPOINT gitlab-ctl reconfigure

# docker run -d \
# 	-h gitlab.example.com \
# 	-p 443:443 -p 80:80 -p 22:22 \
# 	--name gitlab \
# 	--restart always \
# 	-v /srv/gitlab/config:/etc/gitlab \
# 	-v /srv/gitlab/logs:/var/log/gitlab \
# 	-v /srv/gitlab/data:/var/opt/gitlab \
# 	gitlab/gitlab-ce:latest

# docker run --restart always -d -p 8443:443 -p 8080:80 -p 8022:22 -h --name gitlab -v /srv/gitlab/config:/etc/gitlab -v /srv/gitlab/logs:/var/log/gitlab -v /srv/gitlab/data:/var/opt/gitlab gitlab/gitlab-ce:latest