use TiendaElectronica
-- Insercion
create procedure AgregarCliente
-- Variables
	@Nombres varchar(50),
	@Apellidos varchar(50),
	@Email varchar(255),
	@DUI varchar(10),
	@Telefono varchar(12),
	@FechaNac date,
	@Direccion varchar(100)

as
begin
	insert into Clientes Values
	(@Nombres,
	@Apellidos,
	@Email,
	@DUI,
	@Telefono,
	@FechaNac,
	@Direccion);
	select * from Clientes;
end

execute AgregarCliente
	@Nombres = 'Juanito',
	@Apellidos = 'Alimañas',
	@Email = 'pedrojhie@ijbnd.com',
	@DUI = '01478596-3',
	@Telefono = '74125896',
	@FechaNac = '01-01-1993',
	@Direccion = 'Sonso'


-- Consulta
Create Procedure MostrarClienteConCargo
as
begin
	Select EMP.DUI, EMP.Nombres, EMP.Apellidos, CAR.Cargo
	from Empleados EMP, Cargo CAR
	where CAR.CargoId = EMP.CargoId
	order by EMP.CargoId
end

exec MostrarClienteConCargo