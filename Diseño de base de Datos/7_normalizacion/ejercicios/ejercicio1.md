# 📌 Ejercicios sobre Normalización y Creación de Claves Primarias y Foráneas

Este documento contiene ejercicios prácticos sobre **normalización de bases de datos** y **definición de claves primarias (PK) y claves foráneas (FK)**. La normalización es clave para eliminar redundancias y mejorar la eficiencia de una base de datos.

---

## 📌 1️⃣ Ejercicio: Normalización de una Base de Datos de Clientes y Pedidos

### **Tabla Inicial (No Normalizada - Problema de Redundancia)**

| id\_cliente | nombre\_cliente | email                                    | id\_pedido | fecha\_pedido | producto | cantidad | precio |
| ----------- | --------------- | ---------------------------------------- | ---------- | ------------- | -------- | -------- | ------ |
| 1           | Juan Pérez      | [juan@email.com](mailto\:juan@email.com) | 101        | 2024-03-10    | Laptop   | 1        | 1000   |
| 1           | Juan Pérez      | [juan@email.com](mailto\:juan@email.com) | 101        | 2024-03-10    | Mouse    | 1        | 25     |
| 2           | Ana Gómez       | [ana@email.com](mailto\:ana@email.com)   | 102        | 2024-03-12    | Teclado  | 1        | 50     |

📌 **Problemas:**

- **Redundancia:** Se repiten los datos del cliente y del pedido.
- **Dificultad para modificar datos:** Si cambia el email de un cliente, hay que actualizarlo en múltiples filas.

### 🔹 **Paso 1: Aplicar Primera Forma Normal (1NF)**

✅ **Solución:** Dividir los datos en dos tablas separadas: `Clientes`, `Pedidos`, y `Productos`.

```sql
CREATE TABLE Clientes (
    id_cliente INT PRIMARY KEY AUTO_INCREMENT,
    nombre VARCHAR(100) NOT NULL,
    email VARCHAR(100) UNIQUE NOT NULL
);

CREATE TABLE Pedidos (
    id_pedido INT PRIMARY KEY AUTO_INCREMENT,
    id_cliente INT,
    fecha_pedido DATE NOT NULL,
    FOREIGN KEY (id_cliente) REFERENCES Clientes(id_cliente)
);

CREATE TABLE Productos (
    id_producto INT PRIMARY KEY AUTO_INCREMENT,
    nombre VARCHAR(100) NOT NULL,
    precio DECIMAL(10,2) NOT NULL
);
```

### 🔹 **Paso 2: Aplicar Segunda Forma Normal (2NF)**

✅ **Problema:** En la tabla de Pedidos, la información de productos y cantidad sigue repitiéndose. ✅ **Solución:** Crear una tabla intermedia `Detalle_Pedido` para la relación N\:M entre `Pedidos` y `Productos`.

```sql
CREATE TABLE Detalle_Pedido (
    id_pedido INT,
    id_producto INT,
    cantidad INT NOT NULL,
    PRIMARY KEY (id_pedido, id_producto),
    FOREIGN KEY (id_pedido) REFERENCES Pedidos(id_pedido),
    FOREIGN KEY (id_producto) REFERENCES Productos(id_producto)
);
```

---

## 📌 2️⃣ Ejercicio: Definición de Claves Primarias y Foráneas

📌 **Dado el siguiente modelo de datos:**

- Un **cliente** puede hacer **muchos pedidos** (1\:N).
- Un **pedido** puede contener **muchos productos** (N\:M).
- Un **producto** puede estar en **varios pedidos**.

✅ **Define las claves primarias y foráneas:**

```sql
-- Clave primaria en Clientes
ALTER TABLE Clientes ADD PRIMARY KEY (id_cliente);

-- Clave primaria en Pedidos y foránea a Clientes
ALTER TABLE Pedidos ADD PRIMARY KEY (id_pedido);
ALTER TABLE Pedidos ADD CONSTRAINT fk_pedido_cliente FOREIGN KEY (id_cliente) REFERENCES Clientes(id_cliente);

-- Clave primaria en Productos
ALTER TABLE Productos ADD PRIMARY KEY (id_producto);

-- Clave primaria en Detalle_Pedido y foráneas a Pedidos y Productos
ALTER TABLE Detalle_Pedido ADD PRIMARY KEY (id_pedido, id_producto);
ALTER TABLE Detalle_Pedido ADD CONSTRAINT fk_detalle_pedido FOREIGN KEY (id_pedido) REFERENCES Pedidos(id_pedido);
ALTER TABLE Detalle_Pedido ADD CONSTRAINT fk_detalle_producto FOREIGN KEY (id_producto) REFERENCES Productos(id_producto);
```

---

## 📌 3️⃣ Ejercicio: Identificar Errores en una Base de Datos Mal Diseñada

📌 **Dada la siguiente estructura mal diseñada:**

```sql
CREATE TABLE Facturas (
    id_factura INT PRIMARY KEY,
    id_cliente INT,
    nombre_cliente VARCHAR(100),
    email_cliente VARCHAR(100),
    id_producto INT,
    nombre_producto VARCHAR(100),
    cantidad INT,
    total DECIMAL(10,2)
);
```

✅ **Errores a detectar:**

1. **Redundancia de datos:** El nombre y email del cliente no deben repetirse.
2. **No hay relación adecuada entre clientes y facturas.**
3. **No se ha normalizado la información de productos.**

✅ **Corrección con Claves Primarias y Foráneas:**

```sql
CREATE TABLE Clientes (
    id_cliente INT PRIMARY KEY AUTO_INCREMENT,
    nombre VARCHAR(100) NOT NULL,
    email VARCHAR(100) UNIQUE NOT NULL
);

CREATE TABLE Facturas (
    id_factura INT PRIMARY KEY AUTO_INCREMENT,
    id_cliente INT,
    fecha DATE NOT NULL,
    total DECIMAL(10,2) NOT NULL,
    FOREIGN KEY (id_cliente) REFERENCES Clientes(id_cliente)
);

CREATE TABLE Detalle_Factura (
    id_factura INT,
    id_producto INT,
    cantidad INT NOT NULL,
    PRIMARY KEY (id_factura, id_producto),
    FOREIGN KEY (id_factura) REFERENCES Facturas(id_factura),
    FOREIGN KEY (id_producto) REFERENCES Productos(id_producto)
);
```

---

## 📌 4️⃣ Conclusión

🎯 **Resumen:** ✅ Aprendimos a aplicar **normalización (1NF, 2NF, 3NF)**. ✅ Definimos correctamente **claves primarias y foráneas**. ✅ Identificamos y corregimos errores en una base de datos mal estructurada.


