# 📌 2️⃣ Modelado Conceptual

El modelado conceptual representa la estructura general de una base de datos sin preocuparse por aspectos técnicos como el lenguaje SQL o el tipo de sistema de gestión de bases de datos (DBMS). Se centra en la **organización de los datos, las entidades, las relaciones y los atributos**.

## 📌 **Herramientas usadas:**
- Diagramas **Entidad-Relación (E-R)**.
- Notación de **Chen** o **Crow’s Foot**.
- Software como **Lucidchart, Draw.io, MySQL Workbench, DBeaver**.

---

## 📌 **Pasos clave en el Modelado Conceptual**

### **1️⃣ Identificar Entidades**
Las entidades representan objetos del mundo real que tienen existencia dentro del sistema.

🔹 **Ejemplo:** En un sistema de ventas, algunas entidades pueden ser:
- **Cliente** (persona que compra productos).
- **Producto** (artículos en venta).
- **Pedido** (transacción de compra de un cliente).
- **Empleado** (persona que trabaja en la empresa).

📌 **Ejemplo Práctico**: En una tienda de electrónicos, las entidades clave pueden ser **Cliente, Producto, Pedido y Empleado**.


### **2️⃣ Definir Atributos**
Cada entidad tiene propiedades o características que la describen.

🔹 **Ejemplo:** Para la entidad **Cliente**, los atributos pueden ser:
- `id_cliente` (Identificador único).
- `nombre`.
- `email`.
- `teléfono`.
- `fecha_registro`.

📌 **Ejemplo Práctico:** Para una entidad **Producto**, los atributos pueden incluir `id_producto`, `nombre`, `precio`, `stock`.


### **3️⃣ Establecer Relaciones entre Entidades**
Las entidades se conectan entre sí a través de relaciones. Cada relación debe describir cómo interactúan las entidades.

🔹 **Ejemplo:**
- Un **cliente** **realiza** un **pedido**.
- Un **pedido** **contiene** varios **productos**.
- Un **empleado** **gestiona** un **pedido**.

📌 **Ejemplo Práctico:**
- Un **paciente** tiene **una o varias citas médicas** en un hospital.
- Un **doctor** atiende **múltiples pacientes**.


### **4️⃣ Definir la Cardinalidad de las Relaciones**
La cardinalidad indica **cuántas veces una entidad se relaciona con otra**.

🔹 **Tipos de cardinalidad:**
- **Uno a Uno (1:1):** Un empleado tiene **un solo** número de identificación.
- **Uno a Muchos (1:N):** Un cliente puede hacer **muchos** pedidos.
- **Muchos a Muchos (M:N):** Un estudiante puede estar inscrito en **varios cursos** y cada curso tiene **varios estudiantes**.

📌 **Ejemplo Práctico:**
- En una escuela, **un profesor** imparte **varias clases**, pero cada clase solo tiene **un profesor** (1:N).
- Un **paciente** puede ser tratado por **varios doctores**, y un **doctor** puede tratar **varios pacientes** (M:N).


---

## 📌 **Ejemplo de Diagrama Entidad-Relación**
Para ilustrar los conceptos anteriores, un **diagrama E-R** de un sistema de pedidos puede verse así:

```
[ Cliente ] ------ (hace) ------ [ Pedido ] ------ (contiene) ------ [ Producto ]
```

Cada **Cliente** puede hacer **varios Pedidos**, y cada **Pedido** puede contener **varios Productos**.

En notación Crow’s Foot:
```
Cliente |———< Pedido >———| Producto
```
- **Cliente-Pedido** es **1:N** (Un cliente puede hacer varios pedidos).
- **Pedido-Producto** es **M:N** (Un pedido puede tener muchos productos y un producto puede estar en muchos pedidos).


---

## 📌 **Resumen del Modelado Conceptual**

| Paso | Descripción |
|------|-------------|
| **1️⃣ Identificar Entidades** | Definir los objetos principales de la base de datos. |
| **2️⃣ Definir Atributos** | Determinar las características de cada entidad. |
| **3️⃣ Establecer Relaciones** | Conectar entidades según su interacción. |
| **4️⃣ Definir Cardinalidad** | Especificar si la relación es 1:1, 1:N o M:N. |

---


