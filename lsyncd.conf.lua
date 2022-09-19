## Өмнөтгөл

`lsyncd` нь `rsync`, `inotify` командуудын хослолоор файл систем дэх өөрчилөлтийг илрүүлж өөр сервер
рүү хуулах зориулалттай сервис юм.

## Суулгах

```shell script
sudo apt install lsyncd
```

## Тохируулах

Анх суухдаа ямарч тохиргоогүй ирдэг бөгөөд доорхи байдлаар тохиргоог үүсгэнэ.

```bash script
sudo vim /etc/lsyncd/lsyncd.conf.lua
```
Доорхи байдлаар тохируулж хадгална.
```lua
settings {
    logfile = "/var/log/lsyncd/lsyncd.log",
    statusFile = "/var/log/lsyncd/lsyncd-status.log",
    statusInterval = 20
}

sync {
    default.rsync,
    source="/srv/webapps/portalcms4/static/",
    target="hurelhuyag@rsync.keycdn.com:portal4static/",
    rsync = {
        archive = false,
        acls = false,
        compress = true,
        links = false,
        owner = false,
        perms = false,
        verbose = true,
        rsh = "/usr/bin/ssh -p 22 -l sodon -i /home/sodon/.ssh/id_rsa -o StrictHostKeyChecking=no"
    }
}

sync {
    default.rsync,
    source="/srv/webapps/static/",
    target="hurelhuyag@rsync.keycdn.com:static/",
    rsync = {
        archive = false,
        acls = false,
        compress = true,
        links = false,
        owner = false,
        perms = false,
        verbose = true,
        rsh = "/usr/bin/ssh -p 22 -l sodon -i /home/sodon/.ssh/id_rsa -o StrictHostKeyChecking=no"
    }
}

```

Log-ийн хавтас файлууд нь мөн адил үүсээгүй байдаг бөгөөд үүсгэж өгөх шаардлагатай.

```bash script
sudo mkdir /var/log/lsyncd/
sudo touch /var/log/lsyncd/lsyncd.log
sudo touch /var/log/lsyncd/lsyncd-status.log

```
