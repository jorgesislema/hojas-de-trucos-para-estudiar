-- 📌 Práctica: Corrección de Problemas de Redundancia en Bases de Datos
-- Objetivo: Identificar y corregir redundancias en la base de datos aplicando normalización.

-- 1️⃣ Creación de una tabla con redundancia de datos (Ejemplo Incorrecto)
CREATE TABLE Ventas_Incorrecto (
    id_factura INT PRIMARY KEY,
    cliente VARCHAR(100),
    direccion VARCHAR(255),
    producto VARCHAR(100),
    cantidad INT,
    precio DECIMAL(10,2)
);

-- Inserción de datos con redundancia
INSERT INTO Ventas_Incorrecto VALUES (1, 'Juan Pérez', 'Calle 123', 'Laptop', 1, 1200.00);
INSERT INTO Ventas_Incorrecto VALUES (2, 'Juan Pérez', 'Calle 123', 'Mouse', 2, 25.00);
INSERT INTO Ventas_Incorrecto VALUES (3, 'Ana López', 'Avenida 456', 'Teclado', 1, 45.00);

-- 🔴 Problema: La dirección del cliente se repite en cada factura.

-- 2️⃣ Normalización: Aplicando 1FN, 2FN y 3FN para eliminar redundancia

-- 🔹 Aplicación de 1FN (Separar los datos en entidades únicas, sin grupos repetidos)
CREATE TABLE Clientes (
    id_cliente INT PRIMARY KEY,
    nombre VARCHAR(100),
    direccion VARCHAR(255)
);

CREATE TABLE Facturas (
    id_factura INT PRIMARY KEY,
    id_cliente INT,
    FOREIGN KEY (id_cliente) REFERENCES Clientes(id_cliente)
);

CREATE TABLE Productos (
    id_producto INT PRIMARY KEY,
    nombre VARCHAR(100),
    precio DECIMAL(10,2)
);

CREATE TABLE Detalle_Factura (
    id_detalle INT PRIMARY KEY AUTO_INCREMENT,
    id_factura INT,
    id_producto INT,
    cantidad INT,
    FOREIGN KEY (id_factura) REFERENCES Facturas(id_factura),
    FOREIGN KEY (id_producto) REFERENCES Productos(id_producto)
);

-- 🔹 Aplicación de 2FN (Eliminar dependencias parciales)
-- Todos los atributos dependen completamente de la clave primaria en cada tabla.

-- 🔹 Aplicación de 3FN (Eliminar dependencias transitivas)
-- Ahora, la dirección del cliente está correctamente almacenada en la tabla Clientes.

-- 3️⃣ Insertando datos sin redundancia
INSERT INTO Clientes VALUES (1, 'Juan Pérez', 'Calle 123');
INSERT INTO Clientes VALUES (2, 'Ana López', 'Avenida 456');

INSERT INTO Facturas VALUES (1, 1);
INSERT INTO Facturas VALUES (2, 1);
INSERT INTO Facturas VALUES (3, 2);

INSERT INTO Productos VALUES (1, 'Laptop', 1200.00);
INSERT INTO Productos VALUES (2, 'Mouse', 25.00);
INSERT INTO Productos VALUES (3, 'Teclado', 45.00);

INSERT INTO Detalle_Factura (id_factura, id_producto, cantidad) VALUES (1, 1, 1);
INSERT INTO Detalle_Factura (id_factura, id_producto, cantidad) VALUES (2, 2, 2);
INSERT INTO Detalle_Factura (id_factura, id_producto, cantidad) VALUES (3, 3, 1);
