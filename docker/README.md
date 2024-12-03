## Build openvpn image

Build image on your own
```
docker buil -t <image> .
```

## Run docker container
**Important:** You must mount local directory which contains full configuration files(such as **openvpn.conf**, **ca.crt**, **your.crt**, **your.key**) to the **/etc/openvpn** or the container start failed.

Because OpenVPN container needs [host server network privileges](https://stackoverflow.com/questions/30547484/calling-openconnect-vpn-client-in-docker-container-shows-tunsetiff-failed-opera?rq=4). I suggest start the container with options **--privileged**, and **--network=host**.
```
docker run -d --privileged [--network=host] -v <localConfDir>:/etc/openvpn --name vpn <yourImage>
```

## Use docker hup image I created.
```
docker run -d --privileged [--network=host] -v <localConfDir>:/etc/openvpn --name vpn zhangwfkl/openvpn:2.6.12-alpine
```
