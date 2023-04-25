Drop database if exists tacondeoro;
create database tacondeoro;
use tacondeoro;

-- CREACION DE TABLAS

drop table if exists socio;
create table socio
(id int not null unique,
nombre varchar(50),
correoe varchar(100),
direccion varchar(50),
poblacion varchar(100),
numerotar varchar(50),
primary key (nombre),
foreign key (direccion) references ruta (areas));

drop table if exists tarjetabancaria;
create table tarjetabancaria
(numero varchar(50) not null unique,
idSocio int,
primary key (numero)
foreign key (idSocio) references socio (id));

drop table if exists pedidos;
create table pedidos
(codigo int not null unique,
fecha varchar(50),
total decimal,
idsocio int,
primary key (codigo),
foreign key(idsocio) references socio (id));

drop table if exists ruta;
create table ruta
(areas varchar (100) not null unique,
diareparto varchar(50),
primary key (areas)
);

drop table if exists empresatransporte;
create table empresatransporte
(nombre varchar(100) not null unique,
CIF varchar(100),
domicilio varchar(100),
primary key (nombre),
foreign key (domicilio) references ruta (areas)
);

drop table if exists articulos;
create table articulo
(id int not null unique,
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
tipoComlemento varchar(50),
tallaComplemento int,
primary key (id)
);

drop table if exists lineaspedido;
create table lineaspedido
(codPedido int not null,
idArticulo int not null,
cantidad int,
primary key (codpe, ida),
unique (codpe, ida),
foreign key (codPedido) references pedidos (codigo),
foreign key (idArticulo) references articulos (id) 
);

-- INSERTAR REGISTROS

-- Zapatos
INSERT INTO `articulo`
(nombre, tipoArticulo, precio, descripcion, material, stock, foto, numeroZapato, tipoZapato)
VALUES
('Z1', 'Zapato',  80, 'Modelo original de acabados impecables y la cantidad perfecta de reflectante', 'Sintetico', 20, 'Z1.png', 38, 'Zapatilla'),
('Z2', 'Zapato',  90, 'Modelo que ofrece una estabilidad premium y una amortiguación cómoda', 'Ante', 15, 'Z2.png', 39, 'Zapato'),
('Z3', 'Zapato',  100, 'Modelo creado para la cancha y adaptado al estilo urbano', 'Goma', 30, 'Z3.png', 36, 'Chancla')
-- ('Nike Air Force 1', 'Zapato',  80, 'Modelo original de baloncesto que introduce costuras duraderas, acabados impecables y la cantidad perfecta de reflectante', 'Sintetico', 20, 'NikeAirForce1.png', 38, 'Zapatilla'),
-- ('Nike Air Max Plus', 'Zapato',  90, 'Modelo Tuned Air que ofrece una estabilidad premium y una amortiguación cómoda', 'Sintetico', 15, 'NikeAirMaxPlus.png', 39, 'Zapatilla'),
-- ('Nike Dunk Low', 'Zapato',  100, 'Modelo creado para la cancha y adaptado al estilo urbano, con revestimientos de brillo perfecto y colores clásicos ', 'Sintetico', 30, 'NikeDunkLow.png', 36, 'Zapatilla')
;

-- Bolsos
INSERT INTO `articulo`
(nombre, tipoArticulo, precio, descripcion, material, stock, fotografia, tipoBolso)
VALUES
('B1', 'Bolso',  50, 'Bandolera1', 'Sintetico', 20, 'B1.png', 'Bandolera'),
('B2', 'Bolso',  60, 'Mochila1', 'Sintetico', 40, 'B2.png', 'Mochila'),
('B3', 'Bolso',  70, 'Bolso de fiesta1', 'Sintetico', 10, 'B3.png', 'Fiesta')
;

-- Complementos
INSERT INTO `articulo`
(nombre, tipoArticulo, precio, descripcion, material, stock, fotografia, tipoComplemento, tallaComplemento)
VALUES
('C1', 'Complemento',  25, 'Cinturon1', 'Sintetico', 80, 'C1.png', 'Cinturón', 85),
('C2', 'Complemento',  25, 'Cinturon1', 'Sintetico', 80, 'C1.png', 'Cinturón', 90),
('C3', 'Complemento',  15, 'Guantes1', 'Lana', 70, 'C2.png', 'Guantes', 6),
('C4', 'Complemento',  10, 'Guantes2 manoplas', 'Lana', 60, 'C3.png', 'Guantes', 7)
;
