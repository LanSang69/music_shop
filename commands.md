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
    id SERIAL PRIMARY KEY, 
    nombre VARCHAR(50) NOT NULL,
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

CREATE TABLE cliente_mostrador(
    id SERIAL PRIMARY KEY,
    nombre VARCHAR(50) NOT NULL,
    p_apellido VARCHAR(50),
    s_apellido VARCHAR(50),
    celular VARCHAR(10) NOT NULL
)

CREATE TABLE empleado (
    id SERIAL PRIMARY KEY,         
    nombre VARCHAR(100) NOT NULL,
    p_apellido VARCHAR(50) NOT NULL, 
    s_apellido VARCHAR(50) NOT NULL,
    rfc VARCHAR(13) UNIQUE,
    puesto INT,
    sucursal INTEGER NOT NULL,
    CONSTRAINT sucursal_referencia FOREIGN KEY(sucursal) REFERENCES sucursal(id), CONSTRAINT puesto_referencia FOREIGN KEY(puesto) REFERENCES puesto(id)
);

CREATE TABLE horario 
(
id_empleado INT,
dia INT,
hora_entrada TIME,
hora_salida TIME,
CONSTRAINT empleado_horario FOREIGN KEY (id_empleado) REFERENCES empleado(id),
CONSTRAINT dias FOREIGN KEY(dia) REFERENCES dia(id), 
CONSTRAINT consistency_schedule CHECK (hora_entrada <= hora_salida)
);

CREATE TABLE dia
(
id SERIAL PRIMARY KEY,
dia VARCHAR(10)
);


CREATE TABLE sucursal (
    id VARCHAR(20) PRIMARY KEY,
    nombre VARCHAR(30),
    colonia VARCHAR(50),
    ciudad VARCHAR(50),
    codigo_postal VARCHAR(50)
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
    categoria VARCHAR(50),
    image_url VARCHAR(30),
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

CREATE TABLE puesto(
    id SERIAL PRIMARY KEY,
    nombre VARCHAR(50),
);

CREATE table rol(
    id_puesto INT,
    tarea VARCHAR(20),
    CONSTRAINT tarea_rol FOREIGN KEY(id_puesto) REFERENCES puesto(id)
)

CREATE TABLE pago (
    id SERIAL PRIMARY KEY,
    tipo_pago VARCHAR(30)
)

CREATE TABLE datos_tarjeta(
    id_cliente INTEGER,
    numero_tarjeta VARCHAR(16),
    vencimiento VARCHAR(5)
    CONSTRAINT cliente_tarjeta FOREIGN KEY(id_cliente) REFERENCES cliente(id),
)

CREATE TABLE venta (
    id SERIAL PRIMARY KEY,
    id_cliente INTEGER,
    fecha TIMESTAMP DEFAULT NOW(),
    tipo_pago INTEGER NOT NULL,
    monto_total DECIMAL(10, 2) NOT NULL,
    sucursal_id INTEGER,
    empleado_id INTEGER,
    CONSTRAINT cliente_compra FOREIGN KEY(id_cliente) REFERENCES cliente_mostrador(id),
    CONSTRAINT pago FOREIGN KEY(tipo_pago) REFERENCES metodo_pago(id),
    CONSTRAINT venta_sucursal FOREIGN KEY(sucursal_id) REFERENCES sucursal(id),
    CONSTRAINT venta_empleado FOREIGN KEY(empleado_id) REFERENCES empleado(id),
)

CREATE TABLE venta_producto (
    id_venta INTEGER,
    id_producto INTEGER,
    cantidad INT,
    precio_unitario DECIMAL(10,2),
    CONSTRAINT venta_producto FOREIGN KEY(id_venta) REFERENCES venta(id),
    CONSTRAINT producto_vendido FOREIGN KEY(id_producto) REFERENCES producto(id_producto),
)