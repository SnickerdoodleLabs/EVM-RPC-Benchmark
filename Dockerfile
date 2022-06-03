FROM ubuntu:18.04

RUN apt update -y \
  && apt install -y curl\
                    vim

RUN curl -L https://github.com/INFURA/versus/releases/download/v1.0/versus_1.0_linux_amd64.tar.gz | tar zx \
    && mv versus /usr/bin/versus

RUN curl -L https://github.com/shazow/ethspam/releases/download/v1.1/ethspam_1.1_linux_amd64.tar.gz | tar zx \
    && mv ethspam /usr/bin/ethspam
    
COPY entrypoint.sh .

ENTRYPOINT ["bash", "entrypoint.sh"]