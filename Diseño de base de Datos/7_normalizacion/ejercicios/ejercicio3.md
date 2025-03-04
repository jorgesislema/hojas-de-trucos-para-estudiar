# 📌 Normalización de Datos para Registro de Llamadas

Este documento describe el proceso de **normalización** de una base de datos que almacena registros de llamadas. Se aplicarán **1NF, 2NF y 3NF** para estructurar mejor los datos y evitar redundancias.

---

## 📌 1️⃣ Datos Iniciales (No Normalizados)

Los datos actuales incluyen información sobre llamadas telefónicas con tiempos de espera, atención y resultados. Algunos problemas detectados:

- **Redundancia de datos**: Se repiten detalles de tiempo y servidores.
- **Dependencias transitivas**: Algunos campos dependen de atributos no clave primaria.
- **Valores no atómicos**: Algunos registros contienen valores que pueden dividirse en tablas separadas.

Ejemplo de datos sin normalizar:

| vru.line | call_id | customer_id | priority | type | date       | vru_entry | vru_exit | vru_time | q_start  | q_exit   | q_time | outcome | ser_start | ser_exit | ser_time | server  | startdate |
|----------|---------|------------|----------|------|------------|-----------|----------|----------|----------|----------|--------|---------|-----------|----------|---------|---------|-----------|
| AA0101   | 33116   | 9664491    | 2        | PS   | 1999-01-01 | 0:00:31   | 0:00:36  | 5        | 0:00:36  | 0:03:09  | 153    | HANG    | 0:00:00   | 0:00:00  | 0       | NO_SERVER | 0         |
| AA0101   | 33117   | 0          | 0        | PS   | 1999-01-01 | 0:34:12   | 0:34:23  | 11       | 0:00:00  | 0:00:00  | 0      | HANG    | 0:00:00   | 0:00:00  | 0       | NO_SERVER | 0         |
| AA0101   | 33118   | 27997683   | 2        | PS   | 1999-01-01 | 6:55:20   | 6:55:26  | 6        | 6:55:26  | 6:55:43  | 17     | AGENT   | 6:55:43   | 6:56:37  | 54      | MICHAL   | 0         |

---

## 📌 2️⃣ Primera Forma Normal (1NF)

**Correcciones Aplicadas:**
- Se eliminan **valores multivaluados**, asegurando que cada campo contenga un solo valor atómico.
- Se reorganiza la información de tiempos en una estructura más clara.

**Nuevas Tablas:**

📌 **Llamadas**
```sql
CREATE TABLE Llamadas (
    call_id INT PRIMARY KEY,
    customer_id VARCHAR(20),
    priority INT,
    type VARCHAR(10),
    date DATE NOT NULL,
    outcome VARCHAR(10),
    startdate INT
);
```

📌 **Tiempo_Llamada**
```sql
CREATE TABLE Tiempo_Llamada (
    id_tiempo INT PRIMARY KEY AUTO_INCREMENT,
    call_id INT NOT NULL,
    vru_entry TIME,
    vru_exit TIME,
    vru_time INT,
    q_start TIME,
    q_exit TIME,
    q_time INT,
    FOREIGN KEY (call_id) REFERENCES Llamadas(call_id)
);
```

📌 **Atencion_Servidor**
```sql
CREATE TABLE Atencion_Servidor (
    id_atencion INT PRIMARY KEY AUTO_INCREMENT,
    call_id INT NOT NULL,
    ser_start TIME,
    ser_exit TIME,
    ser_time INT,
    server VARCHAR(20),
    FOREIGN KEY (call_id) REFERENCES Llamadas(call_id)
);
```

---

## 📌 3️⃣ Segunda Forma Normal (2NF)

**Correcciones Aplicadas:**
- Se eliminan **dependencias parciales**, separando la información de tiempos y servidores en tablas diferentes.

📌 **Servidores**
```sql
CREATE TABLE Servidores (
    server_id VARCHAR(20) PRIMARY KEY,
    nombre VARCHAR(50) NOT NULL
);
```

📌 **Actualización de Atencion_Servidor para referenciar Servidores**
```sql
ALTER TABLE Atencion_Servidor
ADD COLUMN server_id VARCHAR(20),
ADD FOREIGN KEY (server_id) REFERENCES Servidores(server_id);
```

---

## 📌 4️⃣ Tercera Forma Normal (3NF)

**Correcciones Aplicadas:**
- Eliminamos **dependencias transitivas**, asegurando que cada atributo solo dependa de la clave primaria.
- Se evita que los servidores se almacenen directamente en la tabla de llamadas, ya que ahora están en su propia tabla.

---

## 📌 5️⃣ Modelo Relacional Final

Después de la normalización, el modelo relacional se organiza así:

```sql
Llamadas (call_id PK, customer_id, priority, type, date, outcome, startdate)
Tiempo_Llamada (id_tiempo PK, call_id FK, vru_entry, vru_exit, vru_time, q_start, q_exit, q_time)
Atencion_Servidor (id_atencion PK, call_id FK, ser_start, ser_exit, ser_time, server_id FK)
Servidores (server_id PK, nombre)
```

---

## 📌 6️⃣ Conclusión

🎯 **Antes:** La base de datos contenía redundancias y problemas de dependencia.  
✅ **Después:** Los datos están organizados en entidades bien definidas, optimizando la gestión de llamadas y servidores.  



