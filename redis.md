Суулгах (Клиент програм)
```
sudo apt install redis-tools
```

Хэрвээ серверийг нь суулгах гэж байгаа бол

```
sudo apt install redis-server
```

Нэвтрэх
```
redis-cli -h 192.168.0.12 -a mysecurepassword
```

Датабааз сонгох
```
SELECT 1 
```

Бүх түлхүүрийг харах 
```
KEYS '**'
```

Prefix-ээр шүүж харах
```
KEYS 'sdn:ws:**'
```

Түлхүүрээр утга харах
```
GET tenants::tenant1
```

Бүх түлхүүрийг устгах
```
FLUSHALL
```

Бусад командууд
```
INFO keyspace
CONFIG GET DATABASES
```
