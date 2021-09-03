Drop database if exists DBProyectoFinal_KinalEE;
Create database DBProyectoFinal_KinalEE;

Use DBProyectoFinal_KinalEE;

Create Table Cliente(
	codigoCliente int not null auto_increment,
    DPICliente varchar(15) not null,
    nombresCliente varchar(200) not null,
    direccionCliente varchar(150) not null,
    estado varchar(1) not null,
    primary key PK_codigoCliente (codigoCliente)
);

Create Table Empleado(
	codigoEmpleado int not null auto_increment,
    DPIEmpleado varchar(15) not null,
    nombresEmpleado varchar(200) not null,
    telefonoEmpleado varchar(8) not null,
    estado varchar(1) not null,
    usuario varchar(15) not null,
    primary key PK_codigoEmpleado (codigoEmpleado)
);

Create Table Producto(
	codigoProducto int not null auto_increment,
    nombreProducto varchar(200) not null,
    precio double not null,
    stock int not null,
    estado varchar(1) not null,
    primary key PK_codigoProducto (codigoProducto)
);

Create Table Venta(
	codigoVenta int not null auto_increment,
    numeroSerie varchar(255) not null,
    fechaVenta date not null,
    monto double not null,
    estado varchar(1) not null,
    codigoCliente int not null,
    codigoEmpleado int not null,
    primary key	PK_codigoVenta (codigoVenta),
    constraint FK_Venta_Cliente Foreign key (codigoCliente)
		references Cliente(codigoCliente),
	constraint FK_Venta_Empleado Foreign key (codigoEmpleado)
		references Empleado(codigoEmpleado)
);

Create Table DetalleVenta(
	codigoDetalleVenta int not null auto_increment,
    cantidad int not null,
    precioVenta int not null,
    codigoVenta int not null,
    codigoProducto int not null,
    primary key PK_codigoDetalleVenta (codigoDetalleVenta),
    Constraint FK_DetalleVenta_Producto foreign key (codigoProducto)
		references Producto(codigoProducto),
	Constraint FK_DetalleVenta_Venta foreign key (codigoVenta)
		references Venta(codigoVenta)
);

Insert into Cliente(DPICliente, nombresCliente, direccionCliente, estado)
	values('1723872360101', 'Sergio Ramón', 'Guatemala', '1');
Insert into Cliente(DPICliente, nombresCliente, direccionCliente, estado)
	values('1121546810101', 'Cecilia Bravo', 'Mixco', '1');
Insert into Cliente(DPICliente, nombresCliente, direccionCliente, estado)
	values('1715422360101', 'Ramiro Sanchez', 'Zona 15', '1');
Insert into Cliente(DPICliente, nombresCliente, direccionCliente, estado)
	values('1549872360101', 'Judith Coral', 'Zona 3', '1');
Insert into Cliente(DPICliente, nombresCliente, direccionCliente, estado)
	values('1513942360101', 'Mario Ramirez', 'Mixco', '1');

Insert into Empleado(DPIEmpleado, nombresEmpleado, telefonoEmpleado, estado, usuario)
	values ('1623123360101', 'Sebastian Martinez', '45635487', '1', 'Sebas_03');
Insert into Empleado(DPIEmpleado, nombresEmpleado, telefonoEmpleado, estado, usuario)
	values ('1845648780101', 'Sonia Mira', '72549873', '1', 'SoMi_00');
Insert into Empleado(DPIEmpleado, nombresEmpleado, telefonoEmpleado, estado, usuario)
	values ('1754963510101', 'Maria Cantos', '45687410', '1', 'MariCan');
Insert into Empleado(DPIEmpleado, nombresEmpleado, telefonoEmpleado, estado, usuario)
	values ('1548795140101', 'Yago Garcia', '49787361', '1', 'ElYagoG');
Insert into Empleado(DPIEmpleado, nombresEmpleado, telefonoEmpleado, estado, usuario)
	values ('1648878210101', 'Amelia Puerto', '65848103', '1', 'Ame123');

Insert into Producto(nombreProducto, precio, stock, estado)
	values ('Television LG', 10000.00, 20, '1');
Insert into Producto(nombreProducto, precio, stock, estado)
	values ('Microondas Whirlpool', 1300.00, 20, '1');
Insert into Producto(nombreProducto, precio, stock, estado)
	values ('Refrigerador LG', 19500.00, 15, '1');
Insert into Producto(nombreProducto, precio, stock, estado)
	values ('Lavardora Whirlpool', 9500.00, 15, '1');
Insert into Producto(nombreProducto, precio, stock, estado)
	values ('Licuadora Oster', 1900.00, 20, '1');

Insert into Venta(numeroSerie, fechaVenta, monto, estado, codigoCliente, codigoEmpleado)
	values ('45884A88PS52', '2021-05-12', 50000.00, '1', 1, 1);
Insert into Venta(numeroSerie, fechaVenta, monto, estado, codigoCliente, codigoEmpleado)
	values ('4F8841D4SS52', '2021-05-19', 6500.00, '1', 2, 2);
Insert into Venta(numeroSerie, fechaVenta, monto, estado, codigoCliente, codigoEmpleado)
	values ('429APSL8SS52', '2021-06-07', 19500.00, '1', 3, 3);
Insert into Venta(numeroSerie, fechaVenta, monto, estado, codigoCliente, codigoEmpleado)
	values ('458DS955PS52', '2021-06-16', 95000.00, '1', 4, 4);
Insert into Venta(numeroSerie, fechaVenta, monto, estado, codigoCliente, codigoEmpleado)
	values ('4899QWE1A152', '2021-06-22', 1900.00, '1', 5, 5);
    
Insert into DetalleVenta(cantidad, precioVenta, codigoVenta, codigoProducto)
	values ( 5, 50000.00, 1, 1);
Insert into DetalleVenta(cantidad, precioVenta, codigoVenta, codigoProducto)
	values ( 5, 6500.00, 2, 2);
Insert into DetalleVenta(cantidad, precioVenta, codigoVenta, codigoProducto)
	values ( 1, 19500.00, 3, 3);
Insert into DetalleVenta(cantidad, precioVenta, codigoVenta, codigoProducto)
	values ( 5, 95000.00, 4, 4);
Insert into DetalleVenta(cantidad, precioVenta, codigoVenta, codigoProducto)
	values ( 1, 1900.00, 5, 5);

Select * from Cliente;
Select * from Empleado;
Select * from Producto;
Select * from Venta;
Select * from DetalleVenta;







