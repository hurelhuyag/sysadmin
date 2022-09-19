## Nginx Error log-оос хамгийн их хандалттай ip-г ялгаж авах

```
cat /var/log/nginx/error.log | \
    grep 'access forbidden by rule' | \
    awk -F'[ ,]' '{print $12}' | \
    sort | uniq -c | sort -nr | \
    awk '{if ($1 >= 3000) print $2}' | \
    sed -r 's/([0-9]+.[0-9]+.[0-9]+.[0-9]+)/iptables -A INPUT -s \1 -j DROP/g' > /home/hurelhuyag/iptables_drop_ips.sh
```
Энд 
- `grep 'access forbidden by rule'` нь өгөгдсөн текстийг агуулсан мөрүүдийг ялгана.
- `awk -F'[ ,]' '{print $12}'` команд нь текст файлыг хоосон зай болон таслалаар зааглан 12 дахь элементийг сонгох юм. Өөр лог файл дээр `$12`-ийг харгалзах баганы дугаараар сольж хэрэглэнэ.
- тэгээд эрэмбэлээд давтамжаар нь тоолоод хамгийн их давтамжтайгаар нь дарин эрэмбэлнэ.
- `awk '{if ($1 >= 3000) print $2}'` 3000-аас илүү давтамжтайг ялгах
- `sed -r 's/([0-9]+.[0-9]+.[0-9]+.[0-9]+)/iptables -A INPUT -s \1 -j DROP/g'` regex ашиглаж iptables cmd үүсгэх
- `iptables -A INPUT -s 64.124.38.138 -j DROP` блоклох
