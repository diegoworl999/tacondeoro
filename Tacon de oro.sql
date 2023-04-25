Drop database if exists tacondeoro;
create database tacondeoro;
use tacondeoro;

create table Tarjetabancaria
(numero varchar(50),
primary key (numero));

create table ruta
(areas varchar (100),
diareparto varchar(50),
primary key (areas)
);

create table socio
(nombre varchar(50),
correoe varchar(100),
direccion varchar(50),
poblacion varchar(100),
numerotar varchar(50),
primary key (nombre),
foreign key (numerotar) references Tarjetabancaria (numero),
foreign key (direccion) references ruta (areas));

create table pedidos
(codigo int,
fecha varchar(50),
total decimal,
nomsocio varchar(50),
primary key (codigo),
foreign key(nomsocio) references socio (nombre));

create table empresatransporte
(nombre varchar(100),
CIF varchar(100),
domicilio varchar(100),
primary key (nombre),
foreign key (domicilio) references ruta (areas)
);

create table articulos
(id int,
nombre varchar (50),
tipoarticulo varchar (50),
precio decimal,
descripcion varchar (500),
material varchar (50), 
stock int,
foto varchar (200),
primary key (id)
);

create table lineaspedido
(codpe int,
ida int,
cantidad int,
primary key (codpe, ida),
unique (codpe, ida),
foreign key (codpe) references pedidos (codigo),
foreign key (ida) references articulos (id) 
);
-- TarjetasBancarias
INSERT INTO `tarjetabancaria`
(numero, idSocio)
VALUES
('155146824674', '1'),
('513546519814', '2'),
('541656518465', '3'),
('651986598518', '4'),
;

-- Empresa
INSERT INTO `tarjetabancaria`
(numero, idSocio)
VALUES
('155146824674', '1'),
('513546519814', '2'),
('541656518465', '3'),
('651986598518', '4'),
;
