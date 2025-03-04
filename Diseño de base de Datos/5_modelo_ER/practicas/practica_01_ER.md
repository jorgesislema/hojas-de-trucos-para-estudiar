# 📌 Práctica 01 - Diseño de Diagrama E-R para una Tienda 🏪

En esta práctica, aprenderás a diseñar un **Diagrama Entidad-Relación (E-R)** para una tienda de productos físicos. El objetivo es comprender cómo estructurar los datos antes de implementarlos en un sistema de gestión de bases de datos (DBMS).

---

## **📌 1️⃣ Paso 1: Identificación de Entidades**

Antes de diseñar el diagrama, debemos definir **las entidades** (objetos principales que guardarán información en la base de datos).

Para una tienda, podemos definir las siguientes entidades:

- **Cliente** (Personas que compran productos)
- **Producto** (Artículos disponibles en la tienda)
- **Pedido** (Registra las compras de los clientes)
- **Empleado** (Personal que gestiona las ventas)

---

## **📌 2️⃣ Paso 2: Definición de Atributos**

Cada entidad debe tener sus **atributos clave**, los cuales representan la información que se almacena sobre ella.

### **Entidad: Cliente** 🧑‍💼
| Atributo       | Tipo de Dato    | Descripción                  |
|---------------|---------------|------------------------------|
| id_cliente    | INT (PK)      | Identificador único del cliente |
| nombre        | VARCHAR(100)  | Nombre del cliente          |
| email         | VARCHAR(100)  | Correo electrónico del cliente |
| telefono      | VARCHAR(15)   | Número de contacto         |

### **Entidad: Producto** 🏷️
| Atributo       | Tipo de Dato    | Descripción                  |
|---------------|---------------|------------------------------|
| id_producto   | INT (PK)      | Identificador único del producto |
| nombre        | VARCHAR(100)  | Nombre del producto         |
| precio        | DECIMAL(10,2) | Precio del producto        |
| stock        | INT           | Cantidad disponible        |

### **Entidad: Pedido** 📦
| Atributo       | Tipo de Dato    | Descripción                  |
|---------------|---------------|------------------------------|
| id_pedido     | INT (PK)      | Identificador único del pedido |
| id_cliente    | INT (FK)      | Cliente que realizó el pedido |
| fecha_pedido  | DATE          | Fecha en la que se hizo la compra |
| total         | DECIMAL(10,2) | Monto total del pedido      |

### **Entidad: Empleado** 👨‍💻
| Atributo       | Tipo de Dato    | Descripción                  |
|---------------|---------------|------------------------------|
| id_empleado   | INT (PK)      | Identificador único del empleado |
| nombre        | VARCHAR(100)  | Nombre del empleado         |
| cargo         | VARCHAR(50)   | Rol del empleado en la tienda |
| fecha_contratacion | DATE     | Fecha de ingreso a la empresa |

---

## **📌 3️⃣ Paso 3: Definición de Relaciones**

Ahora definimos las **relaciones** entre las entidades:

- Un **Cliente** puede realizar **muchos pedidos** → **Relación 1:N**
- Un **Pedido** puede contener **varios productos** y un **producto puede estar en varios pedidos** → **Relación N:M**
- Un **Empleado** puede registrar **muchos pedidos**, pero cada pedido es registrado por un solo empleado → **Relación 1:N**

📌 **Ejemplo gráfico en papel** 📝:
```
[ Cliente ] --- (Realiza) --- [ Pedido ] --- (Contiene) --- [ Producto ]
               |                     |
          (Registrado por)         (Gestionado por)
               |                     |
          [ Empleado ]           [ Stock ]
```

---

## **📌 4️⃣ Paso 4: Creación del Diagrama E-R Digital**

Puedes utilizar herramientas digitales para dibujar el diagrama. Algunas opciones recomendadas son:

| Herramienta | Tipo | Facilidad de Uso |
|------------|------|-----------------|
| **Draw.io** | Gratuito | Muy Fácil |
| **MySQL Workbench** | Gratuito | Fácil |
| **Lucidchart** | Pago/Gratis limitado | Fácil |
| **Dbdiagram.io** | Gratuito | Muy Fácil |
| **AI ChatDB Designer** | IA/Automático | Fácil |

📌 **Ejemplo digital en MySQL Workbench o Draw.io**:

- **Cliente (id_cliente)** → 1:N → **Pedido (id_pedido)**
- **Pedido (id_pedido)** → N:M → **Producto (id_producto)**
- **Empleado (id_empleado)** → 1:N → **Pedido (id_pedido)**

---

## **📌 5️⃣ Paso 5: Normalización del Modelo**

Para evitar redundancias y problemas de consistencia en la base de datos, aplicamos normalización:

1. **Primera Forma Normal (1NF):**
   - Todos los atributos deben ser atómicos (sin listas o valores repetidos dentro de una celda).

2. **Segunda Forma Normal (2NF):**
   - Todos los atributos dependen completamente de la clave primaria.

3. **Tercera Forma Normal (3NF):**
   - No debe haber dependencias transitivas (datos que dependen de otros datos que no son la clave primaria).

📌 **Ejemplo de Normalización:**

✅ **Antes (Sin Normalizar):**
| id_pedido | cliente | producto | cantidad | total |
|-----------|---------|----------|----------|-------|
| 1         | Juan    | Laptop   | 1        | 1200  |
| 1         | Juan    | Mouse    | 1        | 30    |

🔴 **Problema:**
- Si el cliente cambia su nombre, hay que modificarlo en múltiples registros.
- Si un producto cambia de precio, debemos actualizar varias filas.

✅ **Después (Normalizado en 3FN):**
- **Clientes (id_cliente, nombre, email)**
- **Productos (id_producto, nombre, precio, stock)**
- **Pedidos (id_pedido, id_cliente, fecha_pedido, total)**
- **Detalle_Pedido (id_pedido, id_producto, cantidad)**

Ahora, cada tabla almacena solo los datos que le corresponden, evitando duplicaciones.

---

## **📌 6️⃣ Conclusión**

Con esta práctica, aprendiste a diseñar un **Diagrama E-R para una tienda**, considerando entidades, atributos y relaciones antes de implementarlo en un DBMS.

🎯 **Resumen:**
✅ **Identificar entidades y atributos clave.**
✅ **Definir relaciones adecuadas (1:1, 1:N, N:M).**
✅ **Representar el modelo en papel antes de usar herramientas digitales.**
✅ **Aplicar normalización para optimizar la base de datos.**

🚀 **¡Ahora diseña tu propio diagrama y conviértelo en una base de datos funcional!** 🎯

