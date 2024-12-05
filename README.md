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


## OpenVPN Docker image
See [docker](docker/README.md)

## QA
Contact me if you have any problem with setting up. Requesting Issue or Emailing me are fine.

I already have built custom priveate network using this repo.
