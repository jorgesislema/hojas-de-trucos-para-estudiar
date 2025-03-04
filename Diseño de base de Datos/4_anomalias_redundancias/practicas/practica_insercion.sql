-- 📌 Práctica: Corrección de Problemas de Inserción en Bases de Datos
-- Objetivo: Identificar y corregir anomalías de inserción aplicando normalización.

-- 1️⃣ Creación de una tabla con anomalía de inserción (Ejemplo Incorrecto)
CREATE TABLE Empleados_Incorrecto (
    id_empleado INT PRIMARY KEY,
    nombre VARCHAR(100),
    departamento VARCHAR(100),
    jefe VARCHAR(100)
);

-- 🔴 Problema: No se puede registrar un nuevo departamento sin asignarle al menos un empleado.

-- 2️⃣ Normalización: Aplicando 1FN, 2FN y 3FN para corregir la anomalía

-- 🔹 Aplicación de 1FN (Dividir los datos en entidades únicas sin grupos repetidos)
CREATE TABLE Departamentos (
    id_departamento INT PRIMARY KEY,
    nombre VARCHAR(100),
    jefe VARCHAR(100)
);

CREATE TABLE Empleados (
    id_empleado INT PRIMARY KEY,
    nombre VARCHAR(100),
    id_departamento INT,
    FOREIGN KEY (id_departamento) REFERENCES Departamentos(id_departamento)
);

-- 🔹 Aplicación de 2FN (Eliminar dependencias parciales)
-- Ahora, los datos del departamento no dependen de los empleados.

-- 🔹 Aplicación de 3FN (Eliminar dependencias transitivas)
-- La información del jefe se mantiene correctamente en la tabla Departamentos.

-- 3️⃣ Insertando datos sin anomalías de inserción
INSERT INTO Departamentos VALUES (1, 'Recursos Humanos', 'Laura Gómez');
INSERT INTO Departamentos VALUES (2, 'TI', 'Carlos Rodríguez');

-- Ahora podemos registrar departamentos sin necesidad de empleados

INSERT INTO Empleados VALUES (1, 'Juan Pérez', 1);
INSERT INTO Empleados VALUES (2, 'Ana López', 2);
