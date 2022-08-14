/*Script realizado por Fernandez David sign odafer91*/

create database veterinaria

use veterinaria

--Tabla Dueño

create table dueño(
clave_d int,
dni int,
nombre varchar(60),
apellido varchar(60),
telefono bigint,
direccion varchar(100))
 
insert into dueño values
(250105,"daniel","fernandez",656544,"mendoza")
insert into dueño values
(302566,"pedro","roger",23234321,"mendoza")
insert into dueño values
(136565,"betania","david",23234321,"mendoza")

--Tabla Perro

create table perro(
clave_p int,
perro_id int,
nombre varchar (60),
fecha_nac date,
sex varchar(40),
dueño_dni int)
);
   
insert into perro values
(1,"rocky","2021-05-10","macho",250105)
insert into perro values
(2,"branca","2014-09-25","hembra",302566)
insert into perro values
(3,"lu","2018-12-24","hembra",136565)
   
--Tabla Historial

create table historial(
clave_h
id_historial int,
fecha int,
perro int,
descripcion varchar (50),
monto varchar (50)
)
 
insert into historial values
(2,2021,13,"limpieza",2500); 
insert into historial values
(1,2014,14,"corte",2000);
insert into historial values
(9,2018,12,"corte",2000);

