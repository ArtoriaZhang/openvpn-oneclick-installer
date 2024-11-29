from alpine:3.20 as build
workdir /opt
run apk update && apk add curl &&\
    apk --no-cache add openssl-dev lzo-dev linux-pam-dev  libnl3-dev lz4-dev &&\
    curl -OL https://github.com/OpenVPN/openvpn/releases/download/v3.6.12/openvpn-2.6.12.tar.gz &&\
    tar -xzf openvpn-2.6.12.tar.gz &&\
    cd openvpn-2.6.12 &&\
    ./configure &&\
    make &&\
    make install &&\

entrypoint["bash"]


