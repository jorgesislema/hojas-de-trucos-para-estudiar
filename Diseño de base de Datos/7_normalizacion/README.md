# 📌 Explicación detallada de Normalización en Bases de Datos: 1FN, 2FN, 3FN, BCNF

## 📌 ¿Qué es la Normalización?

La **normalización** es un proceso estructurado para organizar los datos en una base de datos relacional con el objetivo de **eliminar redundancias**, **evitar anomalías** y **garantizar la integridad de los datos**. Se logra dividiendo una base de datos en varias tablas relacionadas y aplicando reglas conocidas como **formas normales**.

Las formas normales más utilizadas en la normalización son:
- **1FN (Primera Forma Normal)**
- **2FN (Segunda Forma Normal)**
- **3FN (Tercera Forma Normal)**
- **BCNF (Forma Normal de Boyce-Codd)**

---

## 📌 1️⃣ Primera Forma Normal (1FN)

### **Regla Principal** ✅
Cada columna debe contener **valores atómicos** (sin listas ni conjuntos de datos múltiples en una sola celda).

### **Ejemplo Incorrecto (No cumple 1FN)** ❌

| id_cliente | nombre     | teléfono              |
|------------|-----------|-----------------------|
| 1          | Juan Pérez | 555-1234, 555-5678   |
| 2          | Ana Gómez  | 555-4321             |

🚨 **Problema:** El campo `teléfono` contiene múltiples valores en una misma celda.

### **Corrección Aplicando 1FN** ✅

| id_cliente | nombre     | telefono   |
|------------|-----------|------------|
| 1          | Juan Pérez | 555-1234   |
| 1          | Juan Pérez | 555-5678   |
| 2          | Ana Gómez  | 555-4321   |

✅ **Ahora cada campo tiene un solo valor atómico.**

---

## 📌 2️⃣ Segunda Forma Normal (2FN)

### **Regla Principal** ✅
Todos los atributos deben depender completamente de la clave primaria.

### **Ejemplo Incorrecto (No cumple 2FN)** ❌

| id_pedido | id_cliente | nombre_cliente | producto  | cantidad |
|-----------|-----------|---------------|-----------|----------|
| 101       | 1         | Juan Pérez    | Laptop    | 1        |
| 102       | 1         | Juan Pérez    | Mouse     | 2        |

🚨 **Problema:** `nombre_cliente` depende de `id_cliente`, pero `id_cliente` no es la clave primaria.

### **Corrección Aplicando 2FN** ✅

📌 **Nueva Tabla `Clientes`**
```sql
CREATE TABLE Clientes (
    id_cliente INT PRIMARY KEY,
    nombre VARCHAR(100)
);
```

📌 **Nueva Tabla `Pedidos`**
```sql
CREATE TABLE Pedidos (
    id_pedido INT PRIMARY KEY,
    id_cliente INT,
    FOREIGN KEY (id_cliente) REFERENCES Clientes(id_cliente)
);
```

✅ **Ahora, `nombre_cliente` se almacena correctamente en la tabla `Clientes`.**

---

## 📌 3️⃣ Tercera Forma Normal (3FN)

### **Regla Principal** ✅
Los atributos no clave deben depender **únicamente** de la clave primaria y no de otros atributos no clave (evitar dependencias transitivas).

### **Ejemplo Incorrecto (No cumple 3FN)** ❌

| id_factura | id_cliente | ciudad_cliente | total |
|------------|-----------|----------------|-------|
| 1001       | 1         | Bogotá         | 500   |
| 1002       | 2         | Medellín       | 300   |

🚨 **Problema:** `ciudad_cliente` depende de `id_cliente`, no de `id_factura`.

### **Corrección Aplicando 3FN** ✅

📌 **Nueva Tabla `Clientes`**
```sql
CREATE TABLE Clientes (
    id_cliente INT PRIMARY KEY,
    nombre VARCHAR(100),
    ciudad VARCHAR(100)
);
```

📌 **Nueva Tabla `Facturas`**
```sql
CREATE TABLE Facturas (
    id_factura INT PRIMARY KEY,
    id_cliente INT,
    total DECIMAL(10,2),
    FOREIGN KEY (id_cliente) REFERENCES Clientes(id_cliente)
);
```

✅ **Ahora, `ciudad_cliente` está correctamente en `Clientes` y la tabla `Facturas` solo almacena datos de facturas.**

---

## 📌 4️⃣ Forma Normal de Boyce-Codd (BCNF)

### **Regla Principal** ✅
Cada determinante debe ser una clave candidata.

### **Ejemplo Incorrecto (No cumple BCNF)** ❌

| id_asignacion | id_profesor | curso      | aula |
|--------------|------------|-----------|------|
| 1            | 10         | Matemáticas | A101 |
| 2            | 10         | Física     | B202 |
| 3            | 11         | Química    | A101 |

🚨 **Problema:** Un profesor solo puede enseñar en **una única aula**, pero la clave primaria es `id_asignacion`. Esto rompe BCNF.

### **Corrección Aplicando BCNF** ✅

📌 **Dividimos en dos tablas para que la relación sea correcta:**

📌 **Nueva Tabla `Profesores`**
```sql
CREATE TABLE Profesores (
    id_profesor INT PRIMARY KEY,
    nombre VARCHAR(100),
    aula VARCHAR(10)
);
```

📌 **Nueva Tabla `Cursos`**
```sql
CREATE TABLE Cursos (
    id_curso INT PRIMARY KEY,
    nombre VARCHAR(100),
    id_profesor INT,
    FOREIGN KEY (id_profesor) REFERENCES Profesores(id_profesor)
);
```

✅ **Ahora cada profesor tiene un aula asignada sin inconsistencias.**

---

## 📌 Conclusión 🎯

🚀 **Aplicar normalización ayuda a:**
✅ Eliminar redundancias.
✅ Evitar problemas en modificaciones de datos.
✅ Mejorar la eficiencia de consultas SQL.
✅ Asegurar la integridad referencial.

🔹 **Antes:** Bases de datos con datos repetidos y propensas a errores.  
🔹 **Después:** Datos organizados, limpios y escalables.



