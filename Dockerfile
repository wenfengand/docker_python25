FROM ubuntu:16.04

# MAINTAINER
MAINTAINER wenfengand@gmail.com

COPY pip.conf /root/.pip/pip.conf
COPY sources.list /etc/apt/sources.list
# running required command
RUN apt update && \
    apt install python3.5 -y && \
    apt install python3-pip -y && \
    ln -s /usr/bin/python3 /usr/bin/python  

# change dir to /
WORKDIR /
CMD [ "/bin/bash" ]

