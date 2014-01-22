# amoeba

Addon Manager for the Ofbiz Erp: Bash Autocomplete

Provides completion in Bash for [Apache OFBiz](https://ofbiz.apache.org/index.html "Apache OFBiz home page")'s [Addon Manager](http://code.google.com/a/apache-extras.org/p/ofbiz-adm/ "OFBiz Addon Manager").

## Preliminary notice

This software is considered to be in alpha quality, as in “could cause crashes or data loss”. It is very unlikely, tough.

Amoeba isn't feature complete yet. Feature requests, bug reports and general feedback are *very* welcome.

## How to install

Preferably in your download folder, type the following:

```shell
wget https://github.com/fgtl/amoeba/archive/12.04.tar.gz && tar -zxf 12.04.tar.gz && rm 12.04.tar.gz
```

Then proceed to typing the following command with root privileges:

```shell
bash amoeba-12.04/install.sh
```

You can remove the installation folder if you don't need it anymore:
(you'll need it to uninstall Amoeba, though)
```shell
rm -r amoeba-12.04
```

### Dependencies

* [GNU Bash](http://www.gnu.org/software/bash/ "GNU Bash")
* [Apache OFBiz](http://ofbiz.apache.org/index.html "Apache OFBiz")
* [OFBiz addon manager](http://code.google.com/a/apache-extras.org/p/ofbiz-adm/ "OFBiz addon manager")

## How to uninstall

With root privileges, type the following command:

```shell
bash amoeba-12.04/uninstall.sh
```

## How to report bugs

Use GitHub's [issues tracker](https://github.com/fgtl/amoeba/issues "Github issues tracker").

Please include the results of the following command:

```shell
lsb_release -sirc; ps -p$$ -ocmd=
```
