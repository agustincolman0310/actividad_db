DROP DATABASE IF EXISTS actividad-db;
CREATE DATABASE actividad_db;
USE actividad_db;

CREATE TABLE `users` (
   `id` INT NOT NULL AUTO_INCREMENT,
   `name` VARCHAR(100) NOT NULL,
   `email` VARCHAR(100) NOT NULL,
   PRIMARY KEY (`id`)
);

CREATE TABLE `categories` (
   `id` INT NOT NULL AUTO_INCREMENT,
   `name` VARCHAR(100) NOT NULL,
   PRIMARY KEY (`id`)
);

CREATE TABLE `notes` (
   `id` INT NOT NULL AUTO_INCREMENT ,
   `title` VARCHAR(100) NOT NULL,
   `description` TEXT NOT NULL,
   `user_id` INT NOT NULL,
   `created_at` DATE NOT NULL,
   `updated_at` DATE,
   `locked` TINYINT,
   PRIMARY KEY (`id`)
);

CREATE TABLE `note_category` (
   `id` INT NOT NULL AUTO_INCREMENT,
   `note_id` INT NOT NULL,
   `category_id` INT NOT NULL,
   PRIMARY KEY (`id`)
);


ALTER TABLE `notes` ADD CONSTRAINT `FK_20660999-c191-42da-8b15-ea8cef19b91e` FOREIGN KEY (`user_id`) REFERENCES `users`(`id`)  ;

ALTER TABLE `note_category` ADD CONSTRAINT `FK_153f8e97-eb47-434c-b3c1-71a7935df5fc` FOREIGN KEY (`note_id`) REFERENCES `notes`(`id`)  ;

ALTER TABLE `note_category` ADD CONSTRAINT `FK_3df800c4-5ca8-4c94-abd4-21fd22d54e50` FOREIGN KEY (`category_id`) REFERENCES `categories`(`id`);

INSERT INTO actividad_db.users (name, email) VALUES ('Agustín Colman', 'agustincolman0310@gmail.com');
INSERT INTO actividad_db.users (name, email) VALUES ('Agustín Reinaldo Colman', 'agustinrcs@gmail.com');
INSERT INTO actividad_db.users (name, email) VALUES ('Agustín Reinaldo Colman Salinas', 'acolman@fi.uba.ar');
INSERT INTO actividad_db.users (name, email) VALUES ('Ricardo Muñoz', 'ricardo@gmail.com');
INSERT INTO actividad_db.users (name, email) VALUES ('Alberto Herrera', 'alberto@gmail.com');
INSERT INTO actividad_db.users (name, email) VALUES ('María Santos', 'maria@gmail.com');
INSERT INTO actividad_db.users (name, email) VALUES ('Yanet Blasquet', 'yanet@gmail.com');
INSERT INTO actividad_db.users (name, email) VALUES ('Alejandra Gonzalez', 'alejandra@gmail.com');
INSERT INTO actividad_db.users (name, email) VALUES ('Soledad Muñoz', 'soledad@gmail.com');
INSERT INTO actividad_db.users (name, email) VALUES ('Ana Centurión', 'ana@gmail.com');

INSERT INTO actividad_db.categories (name) VALUES ('Trabajo');
INSERT INTO actividad_db.categories (name) VALUES ('Deportes');
INSERT INTO actividad_db.categories (name) VALUES ('Familia');
INSERT INTO actividad_db.categories (name) VALUES ('Compras');
INSERT INTO actividad_db.categories (name) VALUES ('Pendientes');
INSERT INTO actividad_db.categories (name) VALUES ('Viajes');
INSERT INTO actividad_db.categories (name) VALUES ('Cursos');
INSERT INTO actividad_db.categories (name) VALUES ('Idiomas');
INSERT INTO actividad_db.categories (name) VALUES ('Alimentación');
INSERT INTO actividad_db.categories (name) VALUES ('Lectura');

INSERT INTO actividad_db.notes (title, description, created_at, user_id) VALUES ('Prueba 1', 'Probando nota 1','2014-10-03',1);
INSERT INTO actividad_db.notes (title, description, created_at, user_id) VALUES ('Prueba 2', 'Probando nota 2','2015-10-03',2);
INSERT INTO actividad_db.notes (title, description, created_at, user_id) VALUES ('Prueba 3', 'Probando nota 3','2016-10-03',3);
INSERT INTO actividad_db.notes (title, description, created_at, user_id) VALUES ('Prueba 4', 'Probando nota 4','2017-10-03',4);
INSERT INTO actividad_db.notes (title, description, created_at, user_id) VALUES ('Prueba 5', 'Probando nota 5','2018-10-03',5);
INSERT INTO actividad_db.notes (title, description, created_at, user_id) VALUES ('Prueba 6', 'Probando nota 6','2019-10-03',6);
INSERT INTO actividad_db.notes (title, description, created_at, user_id) VALUES ('Prueba 7', 'Probando nota 7','2020-10-03',7);
INSERT INTO actividad_db.notes (title, description, created_at, user_id) VALUES ('Prueba 8', 'Probando nota 8','2021-10-03',8);
INSERT INTO actividad_db.notes (title, description, created_at, user_id) VALUES ('Prueba 9', 'Probando nota 9','2022-10-03',9);
INSERT INTO actividad_db.notes (title, description, created_at, user_id) VALUES ('Prueba 10', 'Probando nota 10','2023-10-03',10);

INSERT INTO actividad_db.note_category (note_id , category_id) VALUES (1,1);
INSERT INTO actividad_db.note_category (note_id , category_id) VALUES (2,2);
INSERT INTO actividad_db.note_category (note_id , category_id) VALUES (3,3);
INSERT INTO actividad_db.note_category (note_id , category_id) VALUES (4,4);
INSERT INTO actividad_db.note_category (note_id , category_id) VALUES (5,5);
INSERT INTO actividad_db.note_category (note_id , category_id) VALUES (6,6);
INSERT INTO actividad_db.note_category (note_id , category_id) VALUES (7,7);
INSERT INTO actividad_db.note_category (note_id , category_id) VALUES (8,8);
INSERT INTO actividad_db.note_category (note_id , category_id) VALUES (9,9);
INSERT INTO actividad_db.note_category (note_id , category_id) VALUES (10,10);
