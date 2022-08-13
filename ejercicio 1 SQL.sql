Create Database Vete;

Use Vete;

CREATE TABLE Dueno
(
	DNI INT,
	Nombre varchar(50),
	Apellido varchar(50),
	Telefono varchar(20),
	Direccion varchar(100),
	PRIMARY KEY(DNI)
);

CREATE TABLE Perro
(
	ID_Perro INT,
	Nombre varchar(50),
	Fecha_nac DATE,
	Sexo varchar(1),
	DNI_dueno INT,
	PRIMARY KEY(ID_Perro),
	FOREIGN KEY (DNI_dueno) REFERENCES Dueno(DNI)
);

CREATE TABLE Historial
(
    ID_Historial INT NOT NULL,
    Fecha DATE,
    ID_Perro INT,
	Descripcion varchar(200),
	Monto FLOAT,
	
    PRIMARY KEY(ID_Historial),
    FOREIGN KEY (ID_Perro) REFERENCES Perro(ID_Perro)
) 