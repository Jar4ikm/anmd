MS SQL Server managment studio
Server Name: localdb/(...) & windows auth
  
PK - Primary key
FK - Foreign key
  
CREATE DATABASE base_name;

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

-- Добавить запись в таблицу
INSERT INTO table_name(var_char_name,int_name,date_name) VALUES ('short_text',15,'2024-08-20');

-- Изменить запись
UPDATE table_name SET text_name=':))' where var_char_name='short_text';
UPDATE table_name SET text_name=':))' where text_name IS NULL;

-- Добавление строки в таблицу
ALTER TABLE table_name ADD added_name_for_FK varchar(50);

-- Добавление вторичного ключа, FOREIGN KEY
ALTER TABLE table_name ADD FOREIGN KEY (added_name_for_FK) REFERENCES second_table(target_for_FK);


