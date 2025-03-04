-- 📌 Práctica: Corrección de Problemas de Eliminación en Bases de Datos
-- Objetivo: Identificar y corregir anomalías de eliminación aplicando normalización.

-- 1️⃣ Creación de una tabla con anomalía de eliminación (Ejemplo Incorrecto)
CREATE TABLE Empleados_Proyectos_Incorrecto (
    id_empleado INT,
    nombre VARCHAR(100),
    proyecto VARCHAR(100),
    PRIMARY KEY (id_empleado, proyecto)
);

-- Inserción de datos
INSERT INTO Empleados_Proyectos_Incorrecto VALUES (1, 'Pedro', 'Sistema Web');
INSERT INTO Empleados_Proyectos_Incorrecto VALUES (2, 'Ana', 'App Móvil');
INSERT INTO Empleados_Proyectos_Incorrecto VALUES (3, 'Carlos', 'Sistema Web');

-- 🔴 Problema: Si eliminamos al último empleado que trabaja en un proyecto, se pierde la información del proyecto.

-- 2️⃣ Normalización: Aplicando 1FN, 2FN y 3FN para corregir la anomalía

-- 🔹 Aplicación de 1FN (Separar los datos en entidades únicas sin grupos repetidos)
CREATE TABLE Empleados (
    id_empleado INT PRIMARY KEY,
    nombre VARCHAR(100)
);

CREATE TABLE Proyectos (
    id_proyecto INT PRIMARY KEY,
    nombre VARCHAR(100)
);

CREATE TABLE Empleados_Proyectos (
    id_empleado INT,
    id_proyecto INT,
    PRIMARY KEY (id_empleado, id_proyecto),
    FOREIGN KEY (id_empleado) REFERENCES Empleados(id_empleado),
    FOREIGN KEY (id_proyecto) REFERENCES Proyectos(id_proyecto)
);

-- 🔹 Aplicación de 2FN (Eliminar dependencias parciales)
-- Ahora, los datos del proyecto no dependen directamente del empleado.

-- 🔹 Aplicación de 3FN (Eliminar dependencias transitivas)
-- La información de los proyectos ahora es independiente y persistente.

-- 3️⃣ Insertando datos sin anomalías de eliminación
INSERT INTO Empleados VALUES (1, 'Pedro');
INSERT INTO Empleados VALUES (2, 'Ana');
INSERT INTO Empleados VALUES (3, 'Carlos');

INSERT INTO Proyectos VALUES (1, 'Sistema Web');
INSERT INTO Proyectos VALUES (2, 'App Móvil');

INSERT INTO Empleados_Proyectos VALUES (1, 1);
INSERT INTO Empleados_Proyectos VALUES (2, 2);
INSERT INTO Empleados_Proyectos VALUES (3, 1);

-- ✅ Resultado: Ahora, si eliminamos a un empleado, la información del proyecto se mantiene.
