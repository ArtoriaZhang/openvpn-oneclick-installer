## Just copy below code & past it to shell
### Note: need sudo privilege to install openvpn dependency packages
```
bash <(curl -sL https://github.com/ArtoriaZhang/openvpn-oneclick-installer/raw/refs/heads/main/install.sh)
```
After executing above cmd, if nothing wrong, the ***openvpn*** executable was installed.
Type 
```
openvpn --version
```
to test the ***openvpn*** is alright.

## Config openvpn server
### Use easyrsa to generate CA pki and keypair
:::To be continued


## Docker container
See [docker](docker/README.md)