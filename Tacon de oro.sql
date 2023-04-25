-- CREACION DE LA BASE DE DATOS
Drop database if exists tacondeoro;
create database tacondeoro;
use tacondeoro;

-- CREACION DE TABLAS

-- CREACION DE LA TABLA 'SOCIO'
drop table if exists socio;
create table socio
(id int not null unique auto_increment,
nombre varchar(50),
correoElectronico varchar(100),
direccion varchar(50),
poblacion varchar(100),
primary key (id)
);

-- INSERTAR REGISTROS EN LA TABLA SOCIO
INSERT INTO `socio`
(nombre, correoElectronico, direccion, poblacion)
VALUES
('Juan', 'juan@asdas.com',  'Avda.A', 'Alcazar'),
('Laura', 'laura@asdas.com',  'Avda.B', 'Herencia'),
('Paula', 'paula@asdas.com',  'Avda.C', 'Tomelloso'),
('Raul', 'raul@asdas.com',  'Avda.D', 'Villafranca')
;

-- CREACION DE LA TABLA 'TARJETABANCARIA'
drop table if exists tarjetabancaria;
create table tarjetabancaria
(numero varchar(50) not null unique,
idSocio int,
primary key (numero),
foreign key (idSocio) references socio (id)
);

-- INSERTAR REGISTROS EN LA TABLA TARJETABANCARIA
INSERT INTO `tarjetabancaria`
(numero, idSocio)
VALUES
('742572', 1),
('763445', 1),
('625145', 2),
('4214125', 3)
;

-- CREACION DE LA TABLA 'EMPRESATRANSPORTE'
drop table if exists empresatransporte;
create table empresatransporte
(nombre varchar(100) not null unique,
CIF varchar(100),
domicilioFiscal varchar(100),
primary key (nombre)
);

-- INSERTAR REGISTROS EN LA TABLA EMPRESATRANSPORTE
INSERT INTO `empresatransporte`
(nombre, CIF, domicilioFiscal)
VALUES
('Empresa1', '13453245', 'Bahamas'),
('Empresa2', '62354532', 'Irlanda'),
('Empresa3', '12351123', 'Bahamas')
;

-- CREACION DE LA TABLA 'RUTA'
drop table if exists ruta;
create table ruta
(id int not null unique auto_increment,
areas varchar (100),
diareparto varchar(50),
empresaT varchar(100),
primary key (id),
foreign key (empresaT) references empresatransporte (nombre)
);

-- INSERTAR REGISTROS EN LA TABLA RUTA
INSERT INTO `ruta`
(areas, diareparto, empresaT)
VALUES
('Area1', 'Lunes', 'Empresa1'),
('Area2', 'Martes', 'Empresa2'),
('Area3', 'Viernes', 'Empresa3')
;

-- CREACION DE LA TABLA 'PEDIDOS'
drop table if exists pedidos;
create table pedidos
(codigo int not null unique auto_increment,
fecha varchar(50),
idRuta int,
total decimal,
idsocio int,
primary key (codigo),
foreign key(idsocio) references socio (id),
foreign key (idRuta) references ruta (id)
);

-- CREACION DE LA TABLA 'ARTICULO'
drop table if exists articulo;
create table articulo
(id int not null unique auto_increment,
nombre varchar (50),
tipoArticulo varchar (50),
precio decimal,
color varchar(50),
descripcion varchar (500),
material varchar (50), 
stock int,
foto varchar (200),
numeroZapato int,
tipoZapato varchar(50),
tipoBolso varchar(50),
tipoComplemento varchar(50),
tallaComplemento int,
primary key (id)
);

-- INSERTAR REGISTROS EN LA TABLA ARTICULO (ZAPATOS)
INSERT INTO `articulo`
(nombre, tipoArticulo, precio, descripcion, material, stock, foto, numeroZapato, tipoZapato)
VALUES
-- ('Z1', 'Zapato',  80, 'Modelo original de acabados impecables y la cantidad perfecta de reflectante', 'Sintetico', 20, 'Z1.png', 38, 'Zapatilla'),
-- ('Z2', 'Zapato',  90, 'Modelo que ofrece una estabilidad premium y una amortiguación cómoda', 'Ante', 15, 'Z2.png', 39, 'Zapato'),
-- ('Z3', 'Zapato',  100, 'Modelo creado para la cancha y adaptado al estilo urbano', 'Goma', 30, 'Z3.png', 36, 'Chancla')
('Nike Air Force 1', 'Zapato',  80, 'Modelo original de acabados impecables y la cantidad perfecta de reflectante', 'Sintetico', 10, 'NikeAirForce1.png', 38, 'Zapatilla'),
('Nike Air Force 1', 'Zapato',  80, 'Modelo original de acabados impecables y la cantidad perfecta de reflectante', 'Sintetico', 5, 'NikeAirForce1.png', 39, 'Zapatilla'),
('Nike Air Force 1', 'Zapato',  80, 'Modelo original de acabados impecables y la cantidad perfecta de reflectante', 'Sintetico', 20, 'NikeAirForce1.png', 40, 'Zapatilla'),
('Nike Air Force 1', 'Zapato',  80, 'Modelo original de acabados impecables y la cantidad perfecta de reflectante', 'Sintetico', 25, 'NikeAirForce1.png', 41, 'Zapatilla'),
('Nike Air Max Plus', 'Zapato',  90, 'Modelo que ofrece una estabilidad premium y una amortiguación cómoda', 'Sintetico', 40, 'NikeAirMaxPlus.png', 39, 'Zapatilla'),
('Nike Air Max Plus', 'Zapato',  90, 'Modelo que ofrece una estabilidad premium y una amortiguación cómoda', 'Sintetico', 50, 'NikeAirMaxPlus.png', 40, 'Zapatilla'),
('Nike Air Max Plus', 'Zapato',  90, 'Modelo que ofrece una estabilidad premium y una amortiguación cómoda', 'Sintetico', 60, 'NikeAirMaxPlus.png', 41, 'Zapatilla'),
('Nike Air Max Plus', 'Zapato',  90, 'Modelo que ofrece una estabilidad premium y una amortiguación cómoda', 'Sintetico', 70, 'NikeAirMaxPlus.png', 42, 'Zapatilla'),
('Nike Air Max Plus', 'Zapato',  90, 'Modelo que ofrece una estabilidad premium y una amortiguación cómoda', 'Sintetico', 80, 'NikeAirMaxPlus.png', 43, 'Zapatilla'),
('Nike Dunk Low', 'Zapato',  100, 'Modelo creado para la cancha y adaptado al estilo urbano', 'Sintetico', 100, 'NikeDunkLow.png', 38, 'Zapatilla'),
('Nike Dunk Low', 'Zapato',  100, 'Modelo creado para la cancha y adaptado al estilo urbano', 'Sintetico', 200, 'NikeDunkLow.png', 39, 'Zapatilla'),
('Nike Dunk Low', 'Zapato',  100, 'Modelo creado para la cancha y adaptado al estilo urbano', 'Sintetico', 300, 'NikeDunkLow.png', 44, 'Zapatilla'),
('Nike Dunk Low', 'Zapato',  100, 'Modelo creado para la cancha y adaptado al estilo urbano', 'Sintetico', 400, 'NikeDunkLow.png', 45, 'Zapatilla')
;

-- INSERTAR REGISTROS EN LA TABLA ARTICULO (BOLSOS)
INSERT INTO `articulo`
(nombre, tipoArticulo, precio, descripcion, material, stock, foto, tipoBolso)
VALUES
('Nike Heritage', 'Bolso', 25, 'Bandolera al estilo clásico Hip Pack con un diseño que puedes llevar cruzado sobre el pecho', 'poliéster', 40, 'NikeHeritage.png', 'Bandolera'),
('Nike Sportswear', 'Bolso',  100, 'Mochila con parte posterior acolchada para ofrecer comodidad y sistema de correas versátil', 'Sintetico', 50, 'NikeSportswear.png', 'Mochila'),
('Parfois Fiesta Dorado', 'Bolso',  30, 'Bolso de fiesta estilo clutch', 'Sintetico', 20, 'ParfoisFiestaDorado.png', 'Fiesta')
;

-- Complementos
INSERT INTO `articulo`
(nombre, tipoArticulo, precio, descripcion, material, stock, foto, tipoComplemento, tallaComplemento)
VALUES
('C1', 'Complemento',  25, 'Cinturon1', 'Sintetico', 80, 'C1.png', 'Cinturón', 85),
('C2', 'Complemento',  25, 'Cinturon1', 'Sintetico', 80, 'C1.png', 'Cinturón', 90),
('C3', 'Complemento',  15, 'Guantes1', 'Lana', 70, 'C2.png', 'Guantes', 6),
('C4', 'Complemento',  10, 'Guantes2 manoplas', 'Lana', 60, 'C3.png', 'Guantes', 7),
('C1', 'Complemento',  25, 'Cinturon1', 'Sintetico', 70, 'C1.png', 'Cinturón', 75),
('C2', 'Complemento',  27, 'Cinturon1', 'Sintetico', 85, 'C1.png', 'Cinturón', 95),
('C3', 'Complemento',  15, 'Guantes1', 'Latex', 70, 'C2.png', 'Guantes', 6),
('C4', 'Complemento',  10, 'Guantes2 manoplas', 'Lana', 60, 'C3.png', 'Guantes', 9)
;

-- CREACION DE LA TABLA 'LINEASPEDIDO'
drop table if exists lineaspedido;
create table lineaspedido
(codPedido int not null,
idArticulo int not null,
cantidad int,
primary key (codPedido, idArticulo),
unique (codPedido, idArticulo),
foreign key (codPedido) references pedidos (codigo),
foreign key (idArticulo) references articulo (id) 
);
