--consulta para listar los clientes que han comprado y vendedor--
select c.Nombres, c.Apellidos, c.Email,c.FechaNac from clientes c 
inner join Factura r on r.ClienteID = c.ClienteID;

--consulta para conocer los cargos de los empleados--
select Nombres,
(select avg(ProductoID) from Productos where ProductoID = r.ProductoID) as Id_cargo
from Empleados h inner join Productos r on r.ProductoID = h.EmpleadoId;

-- consulta para conocer la descripcion y el ID de los productos desde el detalleFactura
select Descripcion,FacturaId FROM Productos
INNER JOIN DetallesFactura ON Productos.ProductoID = DetallesFactura.FacturaId;

-- consulta para conocer los productos y el cliente a quein se le vendio
SELECT *
FROM Productos
     INNER JOIN Factura 
ON Productos.ProductoID = Factura.FacturaId


-- consulta para conocer los clientes, cantidad de producto y el total
SELECT c.Nombres, p.Descripcion, d.Cantidad, d.Total FROM Clientes c 
INNER JOIN Productos p ON c.ClienteID = p.ProductoID
INNER JOIN DetallesFactura d ON p.ProductoID = d.DetalleID;


--Consulta para encontrar los productos con cierto precio
select Nombre, Descripcion
from Productos
where Precio > 4;

--Consulta para calcular el precio a pagar
SELECT SUM(Total) AS Total_a_pagar
FROM DetallesFactura
WHERE Total > 10;

--Consulta para encontrar empleados que tienen numero de DUI
select Nombres, Apellidos, DUI
from empleados
where DUI LIKE '%%[0-9]%%';

select * from Clientes

--Consulta para listar los cliente con cierta restriccion
select Nombres, Email, Direccion
from Clientes
where Telefono LIKE '%%[0-4]%%';

--Consulta para el precio por todos los productos
select AVG(Precio) as precio_promedio
from Productos;
