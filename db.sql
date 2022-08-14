create table Perro(
    ID_Perro int not null auto_increment,
    nombre varchar(255) not null,
    Fecha_nac date not null,
    Sexo varchar(9) not null,
    DNI_dueno varchar(255) not null,
    PRIMARY KEY (ID_Perro ),
    FOREIGN KEY (DNI_dueno) REFERENCES Dueno(DNI)
)

create table DUENO(
    DNI varchar(255) not null,
    NOMBRE varchar(255) not null,
    APELLIDO varchar(255) not null,
    TELEFONO varchar(255) not null,
    DIRECCION varchar(255)not null,
    PRIMARY KEY (DNI)
    );

create table Historial(
     ID_historial int not null auto_increment,
    Fecha date not null, Perro int not null,
    descripcion varchar(255) not null,
    monto double not null, primary key(ID_historial),
    FOREIGN KEY (perro) REFERENCES Perro(ID_Perro) 
    );


-- Volcado de datos para la tabla `dueno`
--

INSERT INTO `dueno` (`DNI`, `NOMBRE`, `APELLIDO`, `TELEFONO`, `DIRECCION`) VALUES
('404040', 'PEDRO', 'PEREZ', '656544', 'CORDOBA'),
('434343', 'PAULA', 'ROSA', '23234321', 'CORDOBA'),
('545454', 'PEDRO', 'ARIEL', '23234321', 'CORDOBA');


-- Volcado de datos para la tabla `historial`
--

INSERT INTO `historial` (`ID_historial`, `Fecha`, `Perro`, `descripcion`, `monto`) VALUES
(2, '2022-01-14', 1, 'CORTE', 3500),
(3, '2022-01-12', 2, 'CORTE', 5000),
(4, '2021-02-13', 3, 'LIMPIEZA', 1500);


-- Volcado de datos para la tabla `perro`
--

INSERT INTO `perro` (`ID_Perro`, `nombre`, `Fecha_nac`, `Sexo`, `DNI_dueno`) VALUES
(1, 'FIRULAIS', '2019-08-07', 'MACHO', '404040'),
(2, 'FIRU2', '2012-12-04', 'HEMBRA', '434343'),
(3, 'SULTAN', '2014-06-05', 'HEMBRA', '545454');