FROM python:3.6.4-alpine3.7
RUN apk add --update build-base

# Enable GNU C Library binaries work on Alpine Linux
RUN	apk --no-cache add ca-certificates wget && \
	wget -q -O /etc/apk/keys/sgerrand.rsa.pub https://alpine-pkgs.sgerrand.com/sgerrand.rsa.pub && \
	wget https://github.com/sgerrand/alpine-pkg-glibc/releases/download/2.28-r0/glibc-2.28-r0.apk && \
	apk add glibc-2.28-r0.apk

# Install miniconda and jupyter
RUN wget https://repo.continuum.io/miniconda/Miniconda3-4.3.31-Linux-x86_64.sh && \
	sh Miniconda3-4.3.31-Linux-x86_64.sh -b -p /root/miniconda
ENV PATH $PATH:/root/miniconda/bin
RUN conda install jupyter && rm -f Miniconda3-4.3.31-Linux-x86_64.sh

# Container configs
WORKDIR /notebooks
EXPOSE 8888
RUN mkdir -p /notebooks
VOLUME /notebooks
CMD ["jupyter", "notebook", "--ip=0.0.0.0", "--allow-root", "--no-browser"]

# docker build -t jupyter Jupyter
# docker run --name jupyter -d -p 8800:8888 -v $(pwd)/notebooks:/notebooks jupyter
# docker exec jupyter jupyter notebook list
