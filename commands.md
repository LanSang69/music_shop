#PARA LOS ROLES:
##ADMIN
CREATE ROLE admin WITH LOGIN PASSWORD 'admin1234';
ALTER ROLE admin CREATEDB;
ALTER ROLE admin SUPERUSER;
ALTER ROLE admin CREATEROLE;
ALTER ROLE admin REPLICATION;
ALTER ROLE admin bypassrls;
##EMPLEADO
CREATE ROLE empleado WITH LOGIN PASSWORD 'esclavo1234';
//permisos pendientes

#PARA LAS BASES DE DATOS

CREATE TABLE cliente (
    id SERIAL PRIMARY KEY, nombre VARCHAR(50) NOT NULL,
    p_apellido VARCHAR(50),
    s_apellido VARCHAR(50),
    rfc VARCHAR(15) UNIQUE,
    calle VARCHAR(50),
    colonia VARCHAR(50),
    ciudad VARCHAR(50),
    codigo_postal INTEGER,
    correo VARCHAR(50) NOT NULL UNIQUE,
    celular VARCHAR(20),
    telefono VARCHAR(20),
    password VARCHAR(30)
);

CREATE TABLE empleado (
    nombre VARCHAR(100) NOT NULL,
    p_apellido VARCHAR(50) NOT NULL, s_apellido VARCHAR(50) NOT NULL,
    rfc VARCHAR(13) PRIMARY KEY,
    puesto INTEGER NOT NULL,
    dia VARCHAR(30), hora VARCHAR(30), 
    sucursal INTEGER NOT NULL,
    CONSTRAINT sucursal_referencia FOREIGN KEY(sucursal) REFERENCES sucursal(id), CONSTRAINT puesto_referencia FOREIGN KEY(puesto) REFERENCES puesto(id)
);


CREATE TABLE sucursales (
    id VARCHAR(20) PRIMARY KEY,
    nombre VARCHAR(30),
    direccion VARCHAR(50)
);

CREATE TABLE producto (
    id_producto SERIAL PRIMARY KEY, 
    nombre VARCHAR(250),
    tipo_producto VARCHAR(50),
    marca VARCHAR(50),
    precio_venta DECIMAL(10, 2),
    descripcion VARCHAR(500),
    modelo VARCHAR(50),
    existencia INTEGER,
    apartado INTEGER,
    proveedor INTEGER,
    Categoria VARCHAR(50),
    CONSTRAINT proveedores FOREIGN KEY (proveedor) REFERENCES proveedor(id)
);

CREATE TABLE proveedor (
    id SERIAL PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL,
    rfc VARCHAR(13) NOT NULL,
    razon_social VARCHAR(100),
    calle VARCHAR(100),
    colonia VARCHAR(100),
    ciudad VARCHAR(100),
    codigo_postal INTEGER,
    nombre_contacto VARCHAR(50) NOT NULL,
    primer_apellido VARCHAR(50),
    segundo_apellido VARCHAR(50),
    telefono_oficina VARCHAR(20),
    telefono_celular VARCHAR(20) NOT NULL
);
