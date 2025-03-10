# 📌 Ejemplo: Diseño de Arquitectura para un Sitio de E-Commerce

## 📌 Introducción
El diseño de la arquitectura de un **sitio de e-commerce** debe garantizar **escalabilidad, rendimiento, seguridad y una experiencia de usuario fluida**. En este documento abordaremos:

✅ **Análisis de requerimientos**.  
✅ **Identificación de entidades y relaciones**.  
✅ **Modelo Entidad-Relación (ERD) y SQL**.  
✅ **Estrategias de indexación, particionamiento y optimización**.  
✅ **Casos de uso y optimización**.  

---

## 📍 1. Análisis de Requerimientos
Antes de modelar la arquitectura del sitio e-commerce, definimos los elementos clave:

✅ **Usuarios**: Registro, login, roles (cliente, administrador).  
✅ **Productos**: Catálogo de productos, precios, stock.  
✅ **Órdenes**: Carrito de compras, historial de pedidos.  
✅ **Pagos**: Procesamiento de pagos con integración de pasarelas.  
✅ **Envíos**: Estados de pedidos, logística.  
✅ **Reseñas y comentarios**: Opiniones de clientes.  

### 🔹 Preguntas Claves para Modelado
❓ ¿Los productos pueden tener múltiples imágenes? → Relación 1-N.  
❓ ¿Existen múltiples roles de usuarios? → Tabla de roles y permisos.  
❓ ¿Cómo garantizar la seguridad en pagos? → Tokens y encriptación.  

---

## 📍 2. Identificación de Entidades y Relaciones

| **Entidad**        | **Descripción** |
|--------------------|----------------|
| **Usuario**        | Información del usuario (ID, nombre, email, rol, etc.). |
| **Producto**       | Información del producto (nombre, precio, stock). |
| **Carrito**        | Productos añadidos temporalmente antes de la compra. |
| **Orden**         | Registro de compras realizadas. |
| **Pago**          | Información de pagos y métodos utilizados. |
| **Envío**         | Seguimiento y estado de envíos de órdenes. |
| **Reseña**        | Opinión de clientes sobre productos comprados. |

🔹 **Relaciones clave:**
- Un usuario puede hacer muchas órdenes. (1-N)
- Un producto puede tener muchas reseñas. (1-N)
- Una orden puede contener varios productos. (N-N)
- Una orden tiene un pago y un estado de envío. (1-1)

---

## 📍 3. Modelo Entidad-Relación (ERD)
```sql
CREATE TABLE usuario (
    id SERIAL PRIMARY KEY,
    nombre VARCHAR(255) NOT NULL,
    email VARCHAR(255) UNIQUE NOT NULL,
    password_hash VARCHAR(255) NOT NULL,
    rol VARCHAR(50) CHECK (rol IN ('cliente', 'admin')),
    fecha_registro TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE producto (
    id SERIAL PRIMARY KEY,
    nombre VARCHAR(255) NOT NULL,
    descripcion TEXT,
    precio DECIMAL(10,2) NOT NULL,
    stock INT NOT NULL,
    fecha_creacion TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE carrito (
    id SERIAL PRIMARY KEY,
    usuario_id INT REFERENCES usuario(id) ON DELETE CASCADE,
    producto_id INT REFERENCES producto(id) ON DELETE CASCADE,
    cantidad INT NOT NULL,
    fecha_agregado TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE orden (
    id SERIAL PRIMARY KEY,
    usuario_id INT REFERENCES usuario(id) ON DELETE CASCADE,
    total DECIMAL(10,2) NOT NULL,
    estado VARCHAR(50) CHECK (estado IN ('pendiente', 'pagado', 'enviado', 'entregado', 'cancelado')),
    fecha_orden TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE pago (
    id SERIAL PRIMARY KEY,
    orden_id INT REFERENCES orden(id) ON DELETE CASCADE,
    metodo VARCHAR(50) CHECK (metodo IN ('tarjeta', 'paypal', 'criptomoneda')),
    estado VARCHAR(50) CHECK (estado IN ('pendiente', 'aprobado', 'rechazado')),
    fecha_pago TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE envio (
    id SERIAL PRIMARY KEY,
    orden_id INT REFERENCES orden(id) ON DELETE CASCADE,
    estado VARCHAR(50) CHECK (estado IN ('pendiente', 'en tránsito', 'entregado')),
    fecha_envio TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE resena (
    id SERIAL PRIMARY KEY,
    usuario_id INT REFERENCES usuario(id) ON DELETE CASCADE,
    producto_id INT REFERENCES producto(id) ON DELETE CASCADE,
    calificacion INT CHECK (calificacion BETWEEN 1 AND 5),
    comentario TEXT,
    fecha_resena TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);
```

---

## 📍 4. Optimización y Seguridad

### ✅ **Índices recomendados:**
```sql
CREATE INDEX idx_usuario_email ON usuario(email);
CREATE INDEX idx_fecha_orden ON orden(fecha_orden);
CREATE INDEX idx_estado_envio ON envio(estado);
```

### ✅ **Estrategias de Optimización**
✔ **Particionamiento:** Órdenes y pagos pueden particionarse por mes/año.  
✔ **Caché de consultas:** Usar Redis para consultas frecuentes en productos.  
✔ **Indexación:** Índices en `email`, `estado_orden`, `fecha_pago`.  

---

## 📍 5. Casos de Uso y Consultas SQL

✅ **Obtener órdenes de un usuario:**
```sql
SELECT o.id, o.total, o.estado, o.fecha_orden 
FROM orden o WHERE o.usuario_id = 1;
```

✅ **Listar productos más vendidos:**
```sql
SELECT p.id, p.nombre, COUNT(o.id) AS total_ventas 
FROM orden o
JOIN carrito c ON o.id = c.id
JOIN producto p ON c.producto_id = p.id
GROUP BY p.id ORDER BY total_ventas DESC LIMIT 10;
```

✅ **Obtener estado de envíos pendientes:**
```sql
SELECT o.id, u.nombre, e.estado 
FROM envio e
JOIN orden o ON e.orden_id = o.id
JOIN usuario u ON o.usuario_id = u.id
WHERE e.estado = 'pendiente';
```

---

## 📌 Conclusión
📌 **El modelo de datos de e-commerce está optimizado para escalabilidad y eficiencia.**  
📌 **El uso de índices y particionamiento mejora las consultas en bases de datos grandes.**  
📌 **Los casos de uso reflejan necesidades reales de un comercio electrónico moderno.**  

