
12. fail2ban тохируулах.

Үүний тулд `/etc/fail2ban/jail.local` файлыг нээж доорх тохиргоог хадгална хадгална

```config
[DEFAULT]
ignoreip = 127.0.0.1/8 192.168.0.0/24
bantime  = 86400
```

`/etc/fail2ban/action.d/iptables-common.local` файлыг нээж доорх тохиргоог хадгална.

```config
[Init]
blocktype = DROP
```
Шинэ тохиргоогоо ачааллахдаа `sudo sevice fail2ban reload` командыг ашиглана.

Уг програмын ажиллагааг `/var/log/fail2ban.log` лог файл дээрээс харж болно.
Уг програмаар блоклогдсон ip хаягуудыг `sudo iptables -L -n` командаар харж болно.

Хэрэгцээт командууд
```
fail2ban-client status
fail2ban-client set YOURJAILNAMEHERE unbanip IPADDRESSHERE
