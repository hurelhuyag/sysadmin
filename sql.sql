select User,Host,Password from mysql.user order by User,Host;
delete from user where Host = '%' and User = 'root';
