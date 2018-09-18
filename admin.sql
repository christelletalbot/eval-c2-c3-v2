--Privilèges admin--

CREATE USER 'admin'@localhost' IDENTIFIED WITH mysql_native_password AS '***'; GRANT USAGE ON *.* TO 'admin'@'localhost' REQUIRE NONE WITH MAX_QUERIES_PER_HOUR 0
MAX_CONNECTIONS_PER_HOUR 0 MAX_UPDATES_PER_HOUR 0 MAX_USER_CONNECTIONS 0; GRANT ALL PRIVILEGES ON 'stock' .* TO 'admin'@'localhost';