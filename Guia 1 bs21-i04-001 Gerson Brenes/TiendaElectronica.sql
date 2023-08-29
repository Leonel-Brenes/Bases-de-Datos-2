create database TiendaElectronica;

use TiendaElectronica;

-- Tabla de Categorías
CREATE TABLE Categorias (
    CategoriaID INT PRIMARY KEY identity(1, 1),
    Nombres VARCHAR(50) NOT NULL,
    Descripcion varchar(100)
);

-- Tabla de Productos
CREATE TABLE Productos (
    ProductoID INT PRIMARY KEY identity(1, 1),
    Nombre VARCHAR(100) NOT NULL,
    Descripcion varchar(100),
    Precio DECIMAL(8, 2) NOT NULL,
    CategoriaID INT,
	FOREIGN KEY (CategoriaID) REFERENCES Categorias(CategoriaID)
);

-- Tabla de Clientes
CREATE TABLE Clientes (
    ClienteID INT PRIMARY KEY identity(1, 1),
    Nombres VARCHAR(50) NOT NULL,
	Apellidos varchar(50) NOT NULL,
    Email VARCHAR(255) NOT NULL,
	DUI varchar(10) not null,
    Telefono VARCHAR(12),
	FechaNac date not null,
    Direccion VARCHAR(100) NOT NULL

);

-- Tabla de Cargo
CREATE TABLE Cargo (
    CargoId INT PRIMARY KEY identity(1, 1),
    Cargo VARCHAR(50) NOT NULL,
);

-- Tabla de Empleados
CREATE TABLE Empleados (
    EmpleadoId INT PRIMARY KEY identity(1, 1),
    Nombres VARCHAR(50) NOT NULL,
	Apellidos varchar(50) NOT NULL,
    Email VARCHAR(255) NOT NULL,
	DUI varchar(10) not null,
    Telefono VARCHAR(12),
	FechaNac date not null,
    Direccion VARCHAR(100) NOT NULL,
	CargoId int,
	FOREIGN KEY (CargoId) REFERENCES Cargo(CargoId)
);

-- Tabla de Pedidos
CREATE TABLE Factura (
    FacturaId INT PRIMARY KEY identity(1, 1),
    ClienteID INT,
	EmpleadoId int,
    FechaFactura DATE NOT NULL,
	FOREIGN KEY (ClienteID) REFERENCES Clientes(ClienteID),
	FOREIGN KEY (EmpleadoId) REFERENCES Empleados(EmpleadoId)
);

-- Tabla de Detalles de Pedidos
CREATE TABLE DetallesFactura(
    DetalleID INT PRIMARY KEY identity(1, 1),
    FacturaId INT,
    ProductoID INT,
    Cantidad INT NOT NULL,
    PrecioUnitario DECIMAL(8, 2) NOT NULL,
	Total decimal(8,2) not null
	FOREIGN KEY (FacturaId) REFERENCES Factura(FacturaId),
	FOREIGN KEY (ProductoID) REFERENCES Productos(ProductoID)
);

