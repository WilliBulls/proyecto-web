Create Database Gestor

use Gestor

CREATE TABLE Productos (
idProducto INT PRIMARY KEY,
Seccion numeric,
nombre VARCHAR(50),
descripcion VARCHAR(100),
Fecha_Entrada Datetime,
precio DECIMAL(10, 2),
);

--Insertar los datos de la tabla Productos
INSERT INTO Productos VALUES (01,'Leche.','Lala','Leche',09-10-2023,17.4);
INSERT INTO Productos VALUES (02,'Leche.','Epura','Leche',08-11-2022,60.5);
INSERT INTO Productos VALUES (01,'Leche.','Lala','Leche',09-10-2001,90.8);
INSERT INTO Productos VALUES (01,'Leche.','Lala','Leche',09-10-2018,78.2);
INSERT INTO Productos VALUES (02,'Leche.','Epura','Leche',08-11-2019,60.3);
INSERT INTO Productos VALUES (02,'Leche.','Epura','Leche',08-11-2012,60.3);
INSERT INTO Productos VALUES (01,'Leche.','Lala','Leche',09-10-2023,10.2);
INSERT INTO Productos VALUES (03,'Leche.','La Vaquita Lola','Leche',10-05-2021,40.5);
INSERT INTO Productos VALUES (03,'Leche.','La Vaquita Lola','Leche',11-01-2022,14.2);
INSERT INTO Productos VALUES (03,'Leche.','La Vaquita Lola','Leche',12-01-2002,23.2);
INSERT INTO Productos VALUES (03,'Leche.','La Vaquita Lola','Leche',12-07-2009,28.2);
INSERT INTO Productos VALUES (04,'Galletas.','Gamesa','Gaelltas',09-08-2003,18.3);
INSERT INTO Productos VALUES (04,'Galletas.','Gamesa','Gaelltas',09-08-2003,18.3);
INSERT INTO Productos VALUES (04,'Galletas.','Gamesa','Gaelltas',09-08-2003,18.3);
INSERT INTO Productos VALUES (05,'Galletas.','Emperador','Gaelltas',23-11-2023,23.6);
INSERT INTO Productos VALUES (06,'Galletas.','Emperador','Gaelltas',23-11-2023,23.6);
INSERT INTO Productos VALUES (06,'Galletas.','Emperador','Gaelltas',23-11-2023,23.6);
INSERT INTO Productos VALUES (05,'Galletas.','Gameesa','Gaelltas',23-11-2023,63.6);
INSERT INTO Productos VALUES (07,'Frijoles.','Frijolito','Frijoles',12-11-2013,83.9);
INSERT INTO Productos VALUES (07,'Frijoles.','Frijolito','Frijoles',12-11-2013,73.5);
INSERT INTO Productos VALUES (07,'Frijoles.','Frijolito','Frijoles',13-11-2014,33.5);
INSERT INTO Productos VALUES (08,'Cereal.','CorFlakes','Frijoles',09-12-2011,73.6);
INSERT INTO Productos VALUES (08,'Cereal.','CorFlakes','Frijoles',09-12-2011,73.6);
INSERT INTO Productos VALUES (08,'Cereal.','CorFlakes','Frijoles',09-12-2011,73.6);
INSERT INTO Productos VALUES (09,'Cereal.','Zucaritas','Frijoles',09-12-2011,73.6);
INSERT INTO Productos VALUES (08,'Cereal.','CorFlakes','Frijoles',09-12-2011,73.6);
INSERT INTO Productos VALUES (10,'Cereal.','Chocokrispy','Frijoles',09-12-2011,73.6);
INSERT INTO Productos VALUES (09,'Cereal.','Zucaritas','Frijoles',09-12-2011,73.6);
INSERT INTO Productos VALUES (10,'Cereal.','Chocokrispy','Frijoles',09-12-2011,73.6);
INSERT INTO Productos VALUES (08,'Cereal.','CorFlakes','Frijoles',09-12-2011,73.6);


-- Creación de la tabla "FechaProductos"
CREATE TABLE FechaProductos (
idProducto INT PRIMARY KEY,
fecha_entradata DATE,
fecha_caducidad date,
fecha_salida date,
FOREIGN KEY (idProducto) REFERENCES Productos(idProducto)
);

--Insertar los datos de la tabla FechaProductos
INSERT INTO FechaProductos VALUES (01,08-09-2011,09-12-2012,-10-09-2011);

-- Creación de la tabla "Empleados"
CREATE TABLE Empleados (
idEmpleado INT PRIMARY KEY,
nombre VARCHAR(50),
apellido_paterno VARCHAR(50),
apellido_materno VARCHAR (50),
Edad INT,
Fecha_Nacimiento DateTime
);

--Insertar los datos de la Tabla Empleados
INSERT INTO Empleados VALUES (01,'Mario Enrique','Frias','Rueda',21,08-09-2001);
INSERT INTO Empleados VALUES (02,'Williams Agustin','Martinez','Cruz',24,08-09-1998);
INSERT INTO Empleados VALUES (03,'Karen Merari','Diaz','Ivents',20,29-10-2002);
INSERT INTO Empleados VALUES (04,'Isai','Campechano','Leon',21,04-04-2002);
INSERT INTO Empleados VALUES (05,'Adan Josue','Salinas','Alfonso',21,07-06-2002);
INSERT INTO Empleados VALUES (06,'Kevin Roxel','Arriojas','Martinez',20,08-10-2002);
INSERT INTO Empleados VALUES (07,'Ali','Gonzalez','Lara',21,02-09-2002);
INSERT INTO Empleados VALUES (08,'Maria Elena','Reyes','Castellanos',53,10-05-1967);
INSERT INTO Empleados VALUES (09,'Luis Angel','Hernandez','Cervantes',20,07-10-2002);
INSERT INTO Empleados VALUES (10,'Roberto Carlos','Frias','Rueda',25,18-12-1998);

-- Creación de la tabla "Ventas"
CREATE TABLE Ventas (
idVenta INT PRIMARY KEY,
idEmpleado INT,
fechaVenta DATE,
Total decimal (20,5),
FOREIGN KEY (idEmpleado) REFERENCES Empleados(idEmpleado)
);

-- Creación de la tabla "Direcciones"
CREATE TABLE Direcciones (
idEmpleado INT,
direccion VARCHAR(100),
Calle VARCHAR,
Colonia VARCHAR,
Numero_Interior INT,
Numero_Exterior INT,
FOREIGN KEY (idEmpleado) REFERENCES Empleados(idEmpleado)
);

-- Creación de la tabla "Proveedores"
CREATE TABLE Proveedores (
idProveedor INT PRIMARY KEY,
idProducto INT,
nombre VARCHAR(100),
producto VARCHAR(100),
Numero_Telefono NUMERIC,
Descripcion VARCHAR(50),
FOREIGN KEY (idProducto) REFERENCES Productos(idProducto)
);

--Creacion de la tabla Detalle Venta

CREATE TABLE DetalleVenta (
idVenta INT PRIMARY KEY,
idEmpleado INT PRIMARY KEY ,
idProducto INT PRIMARY KEY,
Cantidad Numeric,
Detalle_Venta VARCHAR (50),
Precio decimal (20,5),
Total decimal (20,5),
CONSTRAINT FK_idVenta FOREIGN KEY (IdVenta) REFERENCES Ventas (idVenta),
CONSTRAINT FK_idProducto FOREIGN KEY (IdProducto) REFERENCES Productos (idProducto),
CONSTRAINT FK_idEmpleado FOREIGN KEY (IdEmpleado) REFERENCES Empleados (idEmpleado),
);

Create Table Usuario(
Correo VARCHAR PRIMARY KEY,
Contraseña VARCHAR (1000),
)
INSERT INTO Usuario VALUES ('Puffle451@gmail.com','Mariox21');
INSERT INTO Usuario VALUES ('L1723@hotmail.com','Willybros24');


Create Table Acesso(
Correo VARCHAR PRIMARY KEY,
Hora_Entrada DATE,
Hora_Salida DATE,
CONSTRAINT FK_Correo FOREIGN KEY (Correo) REFERENCES Usuario (Correo),
)