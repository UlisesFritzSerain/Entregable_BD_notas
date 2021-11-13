CREATE DATABASE consigna;
USE consigna;

CREATE TABLE `usuarios` (
   `nombre` VARCHAR(100) NOT NULL,
   `email` VARCHAR(100) NOT NULL,
   `id` INT NOT NULL AUTO_INCREMENT,
   PRIMARY KEY (`id`)
);

CREATE TABLE `notas` (
   `titulo` VARCHAR(100) NOT NULL,
   `fecha_creacion` DATE NOT NULL,
   `fecha.update` DATE,
   `descripcion` TEXT NOT NULL,
   `id` INT NOT NULL AUTO_INCREMENT,
   `usuario_id` INT,
   `fecha_borrado` DATE,
   PRIMARY KEY (`id`)
);

CREATE TABLE `categorias` (
   `id` INT NOT NULL AUTO_INCREMENT,
   `nombre` VARCHAR(100) NOT NULL,
   PRIMARY KEY (`id`)
);

CREATE TABLE `categorias_notas` (
   `id` INT NOT NULL AUTO_INCREMENT,
   `categoria_id` INT,
   `notas_id` INT,
   PRIMARY KEY (`id`)
);


ALTER TABLE `notas` ADD CONSTRAINT `FK_c2dfef25-acb9-49ea-ae61-489c20afc856` FOREIGN KEY (`usuario_id`) REFERENCES `usuarios`(`id`)  ;

ALTER TABLE `categorias_notas` ADD CONSTRAINT `FK_7f09680f-1ca1-4ee1-8045-ced5e2547d79` FOREIGN KEY (`categoria_id`) REFERENCES `categorias`(`id`)  ;

ALTER TABLE `categorias_notas` ADD CONSTRAINT `FK_c6c7332c-0751-4530-8c81-6ff3f2610c68` FOREIGN KEY (`notas_id`) REFERENCES `notas`(`id`)  ;


insert into usuarios (id, nombre, email) values (1, 'Alfi', 'atimbridge0@t-online.de');
insert into usuarios (id, nombre, email) values (2, 'Darrick', 'dleneve1@indiegogo.com');
insert into usuarios (id, nombre, email) values (3, 'Jesselyn', 'jrabbet2@reddit.com');
insert into usuarios (id, nombre, email) values (4, 'Carmine', 'cgilhooly3@e-recht24.de');
insert into usuarios (id, nombre, email) values (5, 'Briano', 'bsmogur4@imdb.com');
insert into usuarios (id, nombre, email) values (6, 'Pamelina', 'pgransden5@digg.com');
insert into usuarios (id, nombre, email) values (7, 'Steve', 'sludwikiewicz6@webeden.co.uk');
insert into usuarios (id, nombre, email) values (8, 'Benito', 'bcrust7@shareasale.com');
insert into usuarios (id, nombre, email) values (9, 'Clayton', 'cnovello8@eepurl.com');
insert into usuarios (id, nombre, email) values (10, 'Berkeley', 'blazare9@rambler.ru');

INSERT INTO notas (id, titulo, descripcion , fecha_creacion , fecha_update , fecha_borrado , usuario_id) VALUES (1, 'Título', 'Text', '2018-10-10', '2018-10-10','2018-10-10', '1');
INSERT INTO notas (id, titulo, descripcion , fecha_creacion , fecha_update , fecha_borrado , usuario_id) VALUES (2, 'Título', 'Text', '2018-10-10', '2018-10-10','2018-10-10', '1');
INSERT INTO notas (id, titulo, descripcion , fecha_creacion , fecha_update , fecha_borrado , usuario_id) VALUES (3, 'Título', 'Text', '2018-10-10', '2018-10-10','2018-10-10', '1');
INSERT INTO notas (id, titulo, descripcion , fecha_creacion , fecha_update , fecha_borrado , usuario_id) VALUES (4, 'Título', 'Text', '2018-10-10', '2018-10-10','2018-10-10', '1');
INSERT INTO notas (id, titulo, descripcion , fecha_creacion , fecha_update , fecha_borrado , usuario_id) VALUES (5, 'Título', 'Text', '2018-10-10', '2018-10-10','2018-10-10', '1');
INSERT INTO notas (id, titulo, descripcion , fecha_creacion , fecha_update , fecha_borrado , usuario_id) VALUES (6, 'Título', 'Text', '2018-10-10', '2018-10-10','2018-10-10', '1');
INSERT INTO notas (id, titulo, descripcion , fecha_creacion , fecha_update , fecha_borrado , usuario_id) VALUES (7, 'Título', 'Text', '2018-10-10', '2018-10-10','2018-10-10', '1');
INSERT INTO notas (id, titulo, descripcion , fecha_creacion , fecha_update , fecha_borrado , usuario_id) VALUES (8, 'Título', 'Text', '2018-10-10', '2018-10-10','2018-10-10', '1');
INSERT INTO notas (id, titulo, descripcion , fecha_creacion , fecha_update , fecha_borrado , usuario_id) VALUES (9, 'Título', 'Text', '2018-10-10', '2018-10-10','2018-10-10', '1');
INSERT INTO notas (id, titulo, descripcion , fecha_creacion , fecha_update , fecha_borrado , usuario_id) VALUES (10, 'Título', 'Text', '2018-10-10', '2018-10-10','2018-10-10', '1');

insert into categorias (id, nombre) values (1, 'Wikivu');
insert into categorias (id, nombre) values (2, 'Dablist');
insert into categorias (id, nombre) values (3, 'Quatz');
insert into categorias (id, nombre) values (4, 'Tambee');
insert into categorias (id, nombre) values (5, 'Edgeify');
insert into categorias (id, nombre) values (6, 'Zava');
insert into categorias (id, nombre) values (7, 'Zava');
insert into categorias (id, nombre) values (8, 'Trudeo');
insert into categorias (id, nombre) values (9, 'Einti');
insert into categorias (id, nombre) values (10, 'Flashset');

INSERT INTO categorias_notas (id, notas_id, categoria_id) VALUES ('1', '1', '1');
INSERT INTO categorias_notas (id, notas_id, categoria_id) VALUES ('2', '2', '1');
INSERT INTO categorias_notas (id, notas_id, categoria_id) VALUES ('3', '3', '1');
INSERT INTO categorias_notas (id, notas_id, categoria_id) VALUES ('4', '4', '1');
INSERT INTO categorias_notas (id, notas_id, categoria_id) VALUES ('5', '5', '1');
INSERT INTO categorias_notas (id, notas_id, categoria_id) VALUES ('6', '6', '1');
INSERT INTO categorias_notas (id, notas_id, categoria_id) VALUES ('7', '7', '1');
INSERT INTO categorias_notas (id, notas_id, categoria_id) VALUES ('8', '8', '1');
INSERT INTO categorias_notas (id, notas_id, categoria_id) VALUES ('9', '9', '1');
INSERT INTO categorias_notas (id, notas_id, categoria_id) VALUES ('10', '10', '1');