-- 📌 Práctica: Corrección de Problemas de Modificación en Bases de Datos
-- Objetivo: Identificar y corregir anomalías de modificación aplicando normalización.

-- 1️⃣ Creación de una tabla con anomalía de modificación (Ejemplo Incorrecto)
CREATE TABLE Productos_Incorrecto (
    id_producto INT PRIMARY KEY,
    nombre VARCHAR(100),
    proveedor VARCHAR(100),
    telefono_proveedor VARCHAR(15)
);

-- Inserción de datos con redundancia
INSERT INTO Productos_Incorrecto VALUES (1, 'Laptop', 'TechCorp', '555-1234');
INSERT INTO Productos_Incorrecto VALUES (2, 'Mouse', 'TechCorp', '555-1234');
INSERT INTO Productos_Incorrecto VALUES (3, 'Teclado', 'KeyMasters', '555-5678');

-- 🔴 Problema: Si el número de teléfono de 'TechCorp' cambia, hay que actualizarlo en varias filas.

-- 2️⃣ Normalización: Aplicando 1FN, 2FN y 3FN para corregir la anomalía

-- 🔹 Aplicación de 1FN (Dividir los datos en entidades únicas sin grupos repetidos)
CREATE TABLE Proveedores (
    id_proveedor INT PRIMARY KEY,
    nombre VARCHAR(100),
    telefono VARCHAR(15)
);

CREATE TABLE Productos (
    id_producto INT PRIMARY KEY,
    nombre VARCHAR(100),
    id_proveedor INT,
    FOREIGN KEY (id_proveedor) REFERENCES Proveedores(id_proveedor)
);

-- 🔹 Aplicación de 2FN (Eliminar dependencias parciales)
-- Ahora, los datos del proveedor no dependen del producto.

-- 🔹 Aplicación de 3FN (Eliminar dependencias transitivas)
-- La información del teléfono del proveedor ahora está correctamente almacenada.

-- 3️⃣ Insertando datos sin anomalías de modificación
INSERT INTO Proveedores VALUES (1, 'TechCorp', '555-1234');
INSERT INTO Proveedores VALUES (2, 'KeyMasters', '555-5678');

INSERT INTO Productos VALUES (1, 'Laptop', 1);
INSERT INTO Productos VALUES (2, 'Mouse', 1);
INSERT INTO Productos VALUES (3, 'Teclado', 2);

-- ✅ Resultado: Ahora, si el número de teléfono de un proveedor cambia, solo se actualiza en una fila.
