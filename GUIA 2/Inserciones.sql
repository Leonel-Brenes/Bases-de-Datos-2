INSERT INTO Cargo (Cargo)  VALUES
('Empleado'),
('Bodeguero'),
('Motorista'),
('Atencion al Cliente'),
('Cajero');INSERT INTO Categorias (Nombres, Descripcion)  VALUES
('Audio', 'Equipos de sonido'),
('Computacion', 'Computadoras de todo tipo y sus accesorios'),
('Electronica', 'Piezas de electricos'),
('Instrumentos', 'Todo tipo de instrumentos musicales'),
('Repuestos', 'Para todo tipos de electrodomesticos');INSERT INTO Clientes(Nombres, Apellidos, Email, DUI, Telefono, FechaNac, Direccion)  VALUES
('Mario Daniel', 'Jumpi Jimenez', 'noseqponer@gmail.com', '78965412-3','74859632', '01-01-2002', 'sonsonate'),
('Josue Raul', 'Magaña Fuentes', 'holaqhace@hotmail.com', '47856235-1','47896215', '05-8-2002', 'Acajutla'),
('Ivan Eli', 'Hernandez Cuellar', 'holaquetal@gmail.com', '45216328-8','47856985', '01-06-2002', 'San Pedro'),
('Raul Humberto', 'Calzadia Ramirez', 'comoestapeople@hotmail.com', '45213698-7','47896512', '04-08-2003', 'San Julian'),
('Juan Jose', 'Moran Arevalo', 'somoslosmejores@outlook.com', '41256307-9','45632102', '07-08-2002', 'San Pedro');

INSERT INTO Empleados(Nombres, Apellidos, Email, DUI, Telefono, FechaNac, Direccion, CargoId)  VALUES
('Pedrito', 'Jimenez', 'noseqponer@gmail.com', '78965412-3','74859632', '01-01-2002', 'sonsonate', '1'),
('Juan', ' Fuentes', 'holaqhace@hotmail.com', '47856235-1','47896215', '05-8-2002', 'Acajutla', '2'),
('Ricardo', ' Cuellar', 'holaquetal@gmail.com', '45216328-8','47856985', '01-06-2002', 'San Pedro', '3'),
('Leonel', ' Ramirez', 'comoestapeople@hotmail.com', '45213698-7','47896512', '04-08-2003', 'San Julian', '4'),
('Mario', ' Arevalo', 'somoslosmejores@outlook.com', '41256307-9','45632102', '07-08-2002', 'San Pedro', '5');

INSERT INTO Productos(Nombre, Descripcion, Precio, CategoriaID)  VALUES
('Guitarra', 'Instrumento musical', '35.00', '1'),
('Teclado', ' Instrumento musical', '45.00','2'),
('Diodo', ' Electronica ', '20.00', '3'),
('Trompeta', ' Instrumento musical', '75.00', '4'),
('Fuente de poder', ' Computacion', '80.00', '5');

INSERT INTO Factura(ClienteID, EmpleadoId, FechaFactura)  VALUES
('4', '5', '05-08-2023'),
('5', '4', '07-08-2023'),
('6', '3', '04-08-2023'),
('7', '2', '01-08-2023'),
('8', '1', '09-08-2023');

INSERT INTO DetallesFactura(FacturaId, ProductoID, Cantidad, PrecioUnitario, Total)  VALUES
('2', '1', '2', '3.50', '7.00'),
('3', '2', '3', '4.00', '12.00'),
('4', '3', '23', '3.00', '69.00'),
('5', '4', '33', '4.00', '132.00'),
('6', '5', '13', '5.00', '65.00');