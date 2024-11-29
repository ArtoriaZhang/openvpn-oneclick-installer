#!/bin/bash

if [[ ! -d app ]]
then
	echo 'Please execute this script in the directory which is sibling of app'
	exit 1
fi

./EasyRSA-3.2.1/easyrsa gen-req client-repo
