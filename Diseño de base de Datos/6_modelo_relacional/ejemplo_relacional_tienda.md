# 📌 Ejemplo Práctico: Conversión de un Diagrama E-R a SQL para una Tienda 🏪

En este caso práctico, veremos cómo convertir un **Diagrama Entidad-Relación (E-R)** en un **modelo relacional** y luego en **sentencias SQL** para una tienda.

---

## 📌 1️⃣ Diagrama E-R Inicial

**Entidades y Relaciones:**
- **Cliente** (id_cliente, nombre, email, teléfono)
- **Pedido** (id_pedido, id_cliente, fecha_pedido, total)
- **Producto** (id_producto, nombre, precio)
- **Detalle_Pedido** (id_pedido, id_producto, cantidad)

📌 **Relaciones:**
- Un **Cliente** puede hacer **muchos pedidos** (1:N).
- Un **Pedido** puede contener **muchos productos** y un **producto** puede estar en **muchos pedidos** (N:M).
- Se necesita una tabla intermedia **Detalle_Pedido** para manejar la relación N:M.

---

## 📌 2️⃣ Conversión al Modelo Relacional

📌 **Modelo Relacional Final:**
```
Clientes (id_cliente PK, nombre, email, teléfono)
Pedidos (id_pedido PK, id_cliente FK, fecha_pedido, total)
Productos (id_producto PK, nombre, precio)
Detalle_Pedido (id_pedido FK, id_producto FK, cantidad)
```

✅ **Claves Primarias y Foráneas:**
- `id_cliente` en **Clientes** es **PK** y en **Pedidos** es **FK**.
- `id_pedido` en **Pedidos** es **PK** y en **Detalle_Pedido** es **FK**.
- `id_producto` en **Productos** es **PK** y en **Detalle_Pedido** es **FK**.

---

## 📌 3️⃣ Creación de Tablas en SQL

### 🔹 Tabla **Clientes**
```sql
CREATE TABLE Clientes (
    id_cliente INT PRIMARY KEY AUTO_INCREMENT,
    nombre VARCHAR(100) NOT NULL,
    email VARCHAR(100) UNIQUE NOT NULL,
    teléfono VARCHAR(15)
);
```

### 🔹 Tabla **Pedidos**
```sql
CREATE TABLE Pedidos (
    id_pedido INT PRIMARY KEY AUTO_INCREMENT,
    id_cliente INT,
    fecha_pedido DATE NOT NULL,
    total DECIMAL(10,2) NOT NULL,
    FOREIGN KEY (id_cliente) REFERENCES Clientes(id_cliente)
);
```

### 🔹 Tabla **Productos**
```sql
CREATE TABLE Productos (
    id_producto INT PRIMARY KEY AUTO_INCREMENT,
    nombre VARCHAR(100) NOT NULL,
    precio DECIMAL(10,2) NOT NULL
);
```

### 🔹 Tabla **Detalle_Pedido** (Tabla intermedia para N:M)
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

## 📌 4️⃣ Inserción de Datos de Prueba

```sql
-- Insertar Clientes
INSERT INTO Clientes (nombre, email, teléfono) VALUES
('Juan Pérez', 'juan@email.com', '555-1234'),
('Ana Gómez', 'ana@email.com', '555-5678');

-- Insertar Productos
INSERT INTO Productos (nombre, precio) VALUES
('Laptop', 1000.00),
('Mouse', 25.00);

-- Insertar Pedidos
INSERT INTO Pedidos (id_cliente, fecha_pedido, total) VALUES
(1, '2024-03-10', 1025.00),
(2, '2024-03-12', 25.00);

-- Insertar Detalles de Pedidos
INSERT INTO Detalle_Pedido (id_pedido, id_producto, cantidad) VALUES
(1, 1, 1),
(1, 2, 1),
(2, 2, 1);
```

---

## 📌 5️⃣ Consultas Útiles en SQL

📌 **Consultar todos los clientes y sus pedidos:**
```sql
SELECT Clientes.nombre, Pedidos.id_pedido, Pedidos.fecha_pedido, Pedidos.total
FROM Clientes
JOIN Pedidos ON Clientes.id_cliente = Pedidos.id_cliente;
```

📌 **Productos más vendidos:**
```sql
SELECT Productos.nombre, SUM(Detalle_Pedido.cantidad) AS total_vendido
FROM Detalle_Pedido
JOIN Productos ON Detalle_Pedido.id_producto = Productos.id_producto
GROUP BY Productos.nombre
ORDER BY total_vendido DESC;
```

📌 **Pedidos de un cliente específico:**
```sql
SELECT Pedidos.id_pedido, Pedidos.fecha_pedido, Pedidos.total
FROM Pedidos
WHERE id_cliente = 1;
```

---

## 📌 6️⃣ Conclusión

🎯 **Resumen:**
✅ Convertimos un diagrama E-R a un modelo relacional.
✅ Creamos la estructura de la base de datos en SQL.
✅ Insertamos datos de prueba y realizamos consultas útiles.



