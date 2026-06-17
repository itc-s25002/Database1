USE kakeibo;
SET GLOBAL local_infile=on;
LOAD DATA INFILE '/tmp/import.csv'
INTO TABLE 家計簿 
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\r\n';
