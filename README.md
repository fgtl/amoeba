amoeba
======

Addon Manager for the Ofbiz Erp: Bash Autocomplete

Provides completion in Bash for [Apache OFBiz](https://ofbiz.apache.org/index.html "Apache OFBiz home page")'s [Addon Manager](http://code.google.com/a/apache-extras.org/p/ofbiz-adm/ "OFBiz Addon Manager").

Preliminary notice
------------------

This software is considered to be in alpha quality. (as in “could cause crashes or data loss”)

Bug reports, feature requests and general feedback are *very* welcome.


How to install
--------------

```shell
# bash ./install.sh
```

How to uninstall
----------------

```shell
# rm /etc/bash_completion.d/adm
```

How to report bugs
------------------

Use GitHub's [issues tracker](https://github.com/fgtl/amoeba/issues "Github issues tracker").

Please include the results of the following command:

```shell
$ lsb_release -sirc; ps -p$$ -ocmd=
```
