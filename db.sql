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