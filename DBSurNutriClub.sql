create database DBproyectfin;
use DBproyectfin;
create table usuario (
idUsuario int unsigned not null auto_increment,
nombre varchar(100) not null,
apellido varchar(100) not null,
dni int unsigned not null,
telefono int unsigned not null,
email varchar(100) not null, 
fechadenacimiento date not null,
primary key (idUsuario)
);
create table provedor(
idProvedor int unsigned not null auto_increment,
nombre varchar(110) not null,
producto varchar(110) not null,
direccion varchar(150) not null,
telefono varchar (50),
email varchar(50),
primary key (idProvedor)
);

create table materiaprima(
idProducto int unsigned not null auto_increment,
nombre varchar(110),
codigo int unsigned not null,
precio float unsigned not null,
primary key (idProducto)
);
create table compras(
idCompras int unsigned not null auto_increment,
producto varchar(110) not null,
fecha date not null,
precio float,
Usuarioid int unsigned not null,
Productoid int unsigned not null,
primary key (idCompras),
foreign key (Usuarioid) references usuario (idUsuario),
foreign key (Productoid) references materiaprima (idProducto)
);
create table suministroProv(
idsuministro int unsigned not null auto_increment,
producto varchar(110) not null,
fecha date not null,
precio float,
Usuarioid int unsigned not null,
Productoid int unsigned not null,
primary key (idsuministro),
foreign key (Usuarioid) references usuario (idUsuario),
foreign key (Productoid) references materiaprima (idProducto)
);





