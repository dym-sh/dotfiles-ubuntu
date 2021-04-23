# `$PATH`

> remove duplicated paths (assuming `usrmerge` already insalled)


`sudo nano /etc/login.defs`

``` sh
ENV_SUPATH      PATH=/usr/local/bin:/usr/local/sbin:/usr/sbin:/usr/bin
ENV_PATH        PATH=/usr/local/bin:/usr/local/sbin:/usr/sbin:/usr/bin
```


`sudo nano /etc/environment`

``` sh
PATH='/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin'
```