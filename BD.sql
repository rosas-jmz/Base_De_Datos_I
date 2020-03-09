CREATE DATABASE hospital;

USE hospital;

CREATE TABLE ingresos(id int auto_increment, nombre varchar(40), fecha  varchar(40), no_planta int, no_cama int, hora varchar(40), primary key (id));

CREATE TABLE medicos(id int auto_increment, codigo int, nombre varchar(40), especialidad varchar(50), primary key(id));

CREATE TABLE user(id int auto_increment, nombre varchar(40), fecha varchar(20), no_planta int, no_cama int, hora varchar(20), ingresosid int, medicosid int, primary key(id),
foreign key (ingresosid) references ingresos(id), foreign key(medicosid) references medicos(id));