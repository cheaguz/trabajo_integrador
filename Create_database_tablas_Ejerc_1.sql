create database Veterinaria;
use Veterinaria;

CREATE TABLE Dueno (
    DNI INT not null,
    Nombre VARCHAR(50),
    Apellido VARCHAR(50),
    Telefono VARCHAR(30),
    Direccion VARCHAR(100),
    PRIMARY KEY (DNI)
);

CREATE TABLE Perro (
    ID_Perro INT not null,
    Nombre VARCHAR(50),
    Fecha_nac DATE,
    Sexo CHAR(1),
    DNI_Dueno INT,
    PRIMARY KEY (ID_Perro),
    FOREIGN KEY (DNI_Dueno)
        REFERENCES Dueno (DNI)
);

CREATE TABLE Historial (
    ID_Historial INT NOT NULL auto_increment,
    Fecha DATE,
    ID_Perro INT,
    Descripcion VARCHAR(200),
    Monto FLOAT,
    PRIMARY KEY (ID_Historial),
    FOREIGN KEY (ID_Perro)
        REFERENCES Perro (ID_Perro)
);