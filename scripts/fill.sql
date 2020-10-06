SET GLOBAL local_infile = 1;
USE project;

LOAD DATA INFILE '/Education/SQL/Project/scripts/coach.csv' INTO TABLE Coach FIELDS TERMINATED BY ',' ENCLOSED BY '"' LINES TERMINATED BY '\n';