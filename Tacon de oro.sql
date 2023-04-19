Drop database if exists tacondeoro;
create database tacondeoro;
use tacondeoro;

drop table if exists socio;
create table socio
(id int not null unique,
nombre varchar(50),
correoe varchar(100),
direccion varchar(50),
poblacion varchar(100),
numerotar varchar(50),
primary key (nombre),
foreign key (numerotar) references Tarjetabancaria (numero),
foreign key (direccion) references ruta (areas));

drop table if exists tarjetabancaria;
create table tarjetabancaria
(numero varchar(50) not null unique,
idSocio int,
primary key (numero)
foreign key (idSocio) references socio (id));

drop table if exists ruta;
create table ruta
(areas varchar (100) not null unique,
diareparto varchar(50),
primary key (areas)
);

drop table if exists pedidos;
create table pedidos
(codigo int not null unique,
fecha varchar(50),
total decimal,
idsocio int,
primary key (codigo),
foreign key(idsocio) references socio (id));

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
tipoarticulo varchar (50),
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
