FROM ubuntu:latest

RUN apt-get update && \
    apt-get install -y python-pip && \
    pip install https://github.com/shadowsocksr-backup/shadowsocksr/archive/3.1.2.zip -U && \
    mv /usr/local/bin/ssserver /usr/local/bin/research && \
    rm -f /usr/local/bin/sslocal 

ENV BUILD_VERSION=4
ADD ./conf /root
ADD ./entrypoint.sh /root

EXPOSE 443

ENV APP_ALG=aes-256-gcm \
    APP_PW=123456

CMD /root/entrypoint.sh
