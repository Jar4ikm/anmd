MS SQL Server managment studio
Server Name: localdb/(...) & windows auth
  
PK - Primary key
FK - Foreign key

-- Создание базы данных
CREATE DATABASE base_name;

-- "Войти" в базу данных
USE base_name;

-- Пример создания таблицы:
CREATE TABLE table_name(
ID int Primary key identity(1,1),
var_char_name varchar(50) UNIQUE,
int_name int NOT NULL,
text_name Text,
date_name date);

-- Удаление таблицы
DROP table table_name;

-- Удаление базы данных
DROP DATABASE base_name;

-- Удаление записи
DELETE FROM table_name WHERE ID = 1;

-- Добавить запись в таблицу
INSERT INTO table_name(var_char_name,int_name,date_name) VALUES ('short_text',15,'2024-08-20');

-- Изменить запись
UPDATE table_name SET text_name=':))' where var_char_name='short_text';
UPDATE table_name SET text_name=':))' where text_name IS NULL; -- Заменяет пустоту на ":))" в полях text_name

-- Добавление строки в таблицу
ALTER TABLE table_name ADD added_name_for_FK varchar(50);

-- Добавление вторичного ключа, FOREIGN KEY
ALTER TABLE table_name ADD FOREIGN KEY (added_name_for_FK) REFERENCES second_table(target_for_FK);







------------------  Päästik - trigger
Create table linnad(
linnID int Auto_increment PRIMARY KEY,
linnanimi varchar(15),
rahvaarv int);

Create table logi(
id int Auto_increment PRIMARY KEY,
aeg DATETIME,
toiming  varchar(100),
andmed varchar(200),
kasutajad varchar(100)
)




