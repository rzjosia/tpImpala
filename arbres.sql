CREATE SCHEMA IF NOT EXISTS PARIS;

CREATE EXTERNAL TABLE IF NOT EXIsTS PARIS.Arbres(
geopoint STRING,
genre STRING,
espece STRING,
adresse STRING,
arrondissement STRING,
circonference DOUBLE,
hauteur DOUBLE,
variete STRING,
datePlantation STRING,
objectId INT
)
ROW FORMAT DELIMITED
FIELDS TERMINATED BY ','
STORED AS TEXTFILE
LOCATION '/paris/arbres';








 
