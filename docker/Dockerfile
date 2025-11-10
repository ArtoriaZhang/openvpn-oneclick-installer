from alpine:3.22 as build

arg openvpn_file=openvpn-2.6.12.tar.gz
workdir /opt

copy $openvpn_file /opt/

run apk --no-cache add openssl-dev lzo-dev libnl3-dev lz4-dev gcc make g++ linux-headers linux-pam-dev libcap-ng-dev 

run tar -xzf $openvpn_file &&\
    cd "${openvpn_file/.tar.gz/}" &&\
    ./configure &&\
    make &&\
    make install


from alpine:3.22

workdir /etc/openvpn

copy --from=build /usr/local/sbin/openvpn /usr/local/sbin/

run apk --no-cache add openssl lzo libnl3 libcap-ng lz4-libs

run mkdir /dev/net && mknod /dev/net/tun c 10 200 && chmod 600 /dev/net/tun

volume /etc/openvpn

#entrypoint ["/bin/sh", "-c"]

cmd ["openvpn", "--config", "/etc/openvpn/openvpn.conf"]
