CREATE DATABASE lilledemyyMurdvee;
use lilledemyyMurdvee;

-- table 1 tootaja
CREATE TABLE tootaja(
tootajaID int Primary key identity(1,1),
eesnimi varchar(50) UNIQUE,
int_name int NOT NULL,
text_name Text,
date_name date);
