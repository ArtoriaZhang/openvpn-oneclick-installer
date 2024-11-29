#!/bin/bash

## Default to download OpenVPN 2.6.12
if [[ ! -d app ]]
then
	mkdir app
fi

	cd app && \
	curl -OL https://github.com/OpenVPN/openvpn/releases/download/v2.6.12/openvpn-2.6.12.tar.gz && \
	curl -OL https://github.com/OpenVPN/easy-rsa/releases/download/v3.2.1/EasyRSA-3.2.1.tgz && \
	sudo yum update -y && \
	sudo yum install epel-release && \
	sudo yum install -y lzo-devel libcap-ng-devel pam-devel libnl3-devel  lz4-devel  && \
	tar -xzf openvpn-2.6.12.tar.gz && \
	tar -xzf EasyRSA-3.2.1.tgz && \
	cd openvpn-2.6.12 && \
	./configure && \
	make && \
	make install

