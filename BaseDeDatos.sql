CREATE DATABASE LaBaguette 

USE LaBaguette

CREATE TABLE pedido (
    nom_producto VARCHAR(255) PRIMARY KEY NOT NULL COMMENT 'Nombre del Producto',
    cantidad INT(10)/*CAMBIOS DE INT(1000) A INT(10)*/ NOT NULL COMMENT 'Cantidad del Producto',
    estado VARCHAR(255) NOT NULL COMMENT 'Estado del Pedido',
    producto VARCHAR(255) NOT NULL COMMENT 'Estado del Producto'
);

CREATE TABLE login (
    productos VARCHAR(255) NOT NULL COMMENT 'Stock de Productos',
    estado INT(10) NOT NULL COMMENT 'Estado del Producto ',
    cantidad VARCHAR(255) NOT NULL COMMENT 'Cantidad de los Productos disponibles',
    id_usuario INT(11) PRIMARY KEY NOT NULL COMMENT 'Codigo dato al usurio registrado',
    usurio VARCHAR(255) NOT NULL COMMENT 'Nombre identificador del usuario'
);


 CREATE TABLE inventarios (
   cantidad_inicial VARCHAR(11) NOT NULL COMMENT 'Cantidad Inicial del inventario',
   cantidad_disponible VARCHAR(11) PRIMARY KEY NOT NULL COMMENT 'Cantidad Disponible del inventario'
);

 CREATE TABLE ventas (
   fechas DATE /*CAMBIOS DE VARCHAR A DATE*/ NOT NULL COMMENT 'Fecha en la que se realizo la compra',
   hora TIME /*CAMBIOS DE VARCHAR A TIME*/NOT NULL COMMMENT 'Hora en la que se realizo la venta',
   IDventa VARCHAR(11) PRIMARY KEY NOT NULL COMMENT 'Registro unico de la venta',
   total VARCHAR(255) NOT NULL COMMENT 'Valor de total de la venta',
   factura VARCHAR(255) NOT NULL COMMENT 'Factura generada por la venta'   
);

CREATE TABLE producto (
  nombre VARCHAR(255) NOT NULL COMMENT 'Nombre del Producto',
  precio INT(10)NOT NULL COMMENT 'Precio del Producto',
  cantidad INT(50) NOT NULL COMMENT 'Cantidad del producto',
  provedor VARCHAR(255) NOT NULL COMMENT 'Nombre del proveedor del producto',
  id_refencia VARCHAR(255) PRIMARY KEY NOT NULL COMMENT 'Codigo de refencia del producto'
);

CREATE TABLE cajero (
  nombre VARCHAR(255) NOT NULL COMMENT 'Nombre del cajero',
  apellido VARCHAR(255) NOT NULL COMMENT 'Apellido del cajero',
  identificacion INT(11) PRIMARY KEY NOT NULL COMMENT 'Numero de identificación del cajero',
  numerodecontacto VARCHAR(20) /*CAMBIOS DE INT(10) A VARCHAR(20)*/NOT NULL COMMENT 'Numero de contacto del cajero'
);

CREATE TABLE cliente (
    nombre VARCHAR(255) NOT NULL COMMENT 'Cliente nombre',
    apellido VARCHAR(255) NOT NULL COMMENT 'Cliente apellido',
    cedcliente INT(11) PRIMARY KEY NOT NULL COMMENT 'Cedula del cliente',
    edad INT(2) /*CAMBIOS DE INT(3) A INT(2)*/NOT NULL COMMENT 'Edad del cliente',
    correo VARCHAR(100) NOT NULL COMMENT 'Correo electronico del cliente',
    Direccion VARCHAR(100) NOT NULL COMMENT 'Direccion de vivienda del cliente',
    numerodecontacto VARCHAR(20) /*CAMBIOS DE INT(10) A VARCHAR(20)*/NOT NULL COMMET 'Numero de contacto del cliente'
);

CREATE TABLE proveedores(
    nombre VARCHAR(255) NOT NULL COMMENT 'Nombre del proveedor',
    apellido VARCHAR(255) NOT NULL COMMENT 'Apellido del proveedor',
    numerodecontacto VARCHAR (20) /*CAMBIOS DE INT(10) A VARCHAR(20)*/ NOT NULL COMMENT 'Numero del contacto del proveedor',
    idprove INT(11) PRIMARY KEY NOT NULL COMMENT 'Identificacion del proveedor',
    producto VARCHAR NOT NULL COMMENT 'Productos que suministra el provedor'
);
