## Ойлголт
Postgresql нь database, schema гэх хоёр ойлголттой бөгөөд schema нь MySQL-ийн database-тай дүйх ойлголт юм. database нь олон байж болох ч тийм ч зөв сонголт биш гэсэн тул нэг л database үүсгээд дотор нь олон schema үүсгэж явах нь зөв гэнэ.

## Суулгах
```
apt install postgresql-11 postgresql-11-postgis-3

```

## Тохируулах
 - Add `listen_addresses = '*'` to `/etc/postgresql/12/main/conf.d/sodon.conf`
 - Add `host all all 192.168.0.0/24 md5` to `/etc/postgresql/12/main/pg_hba.conf`
 
## Нууц үг тохируулах
```
sudo -u postgres psql postgres
\password postgres
```

## Нэвтрэх
```
psql -h localhost -U postgres -W
```

## PostGIS идэвхжүлэх
```
CREATE extension postgis;
SELECT PostGIS_version();
```

## Essential Commands
 - Check Version `select version();`
 - List Databases `\l`
 - Select Database `\c database_name` (Actually creates new connection)
 - View Selected Database `SELECT current_database()`
 - List Schemas `\dn`
 - List Tables `\dt`
 - List Tables for single schema `\dt schema_name.`
 - Create User `create user test with encrypted password 'test'`
 - Grant Access to user `grant all privileges on database test to test`


## Гарах
```
exit
```
