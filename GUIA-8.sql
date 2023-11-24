create sequence Id_detallefactura
	start with 1
	increment by 1
	minvalue 1
	maxvalue 1000


create table ReporteDetalleFactura(
	Id_detallefactura int primary key,
	DetalleID int,
	FacturaId int,
	ProductoID int, 
	Cantidad int,
	PrecioUnitario decimal,
	Total decimal
);