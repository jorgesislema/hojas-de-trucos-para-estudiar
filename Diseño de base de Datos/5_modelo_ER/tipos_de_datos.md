# 📌 Tipos de Datos en Bases de Datos 📊

Al diseñar una base de datos, elegir el tipo de dato correcto para cada atributo es fundamental para garantizar eficiencia, optimización del almacenamiento y precisión en la información. En este documento, exploraremos los diferentes tipos de datos y sus aplicaciones en bases de datos relacionales.

---

## 📌 1️⃣ ¿Qué es un Tipo de Dato?

Un **tipo de dato** define qué tipo de valores puede almacenar una columna en una base de datos. Por ejemplo:
- **Números enteros** → Para identificadores únicos como `id_cliente`.
- **Texto** → Para nombres, direcciones o descripciones.
- **Fechas y horas** → Para registrar eventos o transacciones.
- **Decimales** → Para almacenar precios o cálculos financieros.

Cada tipo de dato tiene un tamaño determinado en memoria y un propósito específico.

---

## 📌 2️⃣ Tipos de Datos en Bases de Datos Relacionales

Los **tipos de datos** se pueden clasificar en varias categorías:

### 🔹 **1. Datos Numéricos**

| Tipo de Dato  | Tamaño (Bytes) | Descripción | Ejemplo |
|--------------|---------------|-------------|---------|
| **TINYINT** | 1 | Entero pequeño (-128 a 127) | Edad: `25` |
| **SMALLINT** | 2 | Entero (-32,768 a 32,767) | Cantidad de stock: `1520` |
| **MEDIUMINT** | 3 | Entero (-8M a 8M) | Número de referencia: `2023456` |
| **INT** | 4 | Entero estándar (-2,147M a 2,147M) | ID de usuario: `105` |
| **BIGINT** | 8 | Entero grande (-9 cuatrillones a 9 cuatrillones) | Número de cuenta bancaria: `987654321012345` |
| **DECIMAL(m,d)** | Variable | Número decimal con precisión | Precio: `1299.99` |
| **FLOAT** | 4 | Número decimal con menos precisión | Promedio de calificación: `4.75` |
| **DOUBLE** | 8 | Número decimal con alta precisión | Distancia en km: `1250.5678` |

📌 **Ejemplo en una tienda:**
- `precio DECIMAL(10,2)` → Almacena precios con 2 decimales.
- `cantidad_stock INT` → Número total de productos en inventario.

---

### 🔹 **2. Datos de Texto y Cadenas**

| Tipo de Dato  | Tamaño Máximo | Descripción | Ejemplo |
|--------------|--------------|-------------|---------|
| **CHAR(n)** | Hasta 255 | Texto de longitud fija | Código de producto: `A102B` |
| **VARCHAR(n)** | Hasta 65,535* | Texto de longitud variable | Nombre de usuario: `Juan Perez` |
| **TEXT** | Hasta 65,535 | Texto largo | Descripción de producto |
| **BLOB** | Hasta 65,535 | Datos binarios (imágenes, archivos) | Imagen de perfil |

📌 **Ejemplo en una tienda:**
- `nombre_producto VARCHAR(100)` → Almacena el nombre de un producto.
- `descripcion TEXT` → Contiene la descripción detallada.

---

### 🔹 **3. Datos de Fecha y Hora**

| Tipo de Dato  | Tamaño (Bytes) | Descripción | Ejemplo |
|--------------|---------------|-------------|---------|
| **DATE** | 3 | Solo fecha (AAAA-MM-DD) | `2024-03-15` |
| **DATETIME** | 8 | Fecha y hora | `2024-03-15 14:30:00` |
| **TIMESTAMP** | 4 | Fecha y hora en formato UNIX | `1700000000` |
| **TIME** | 3 | Solo hora (HH:MM:SS) | `14:30:00` |
| **YEAR** | 1 | Solo año | `2024` |

📌 **Ejemplo en una tienda:**
- `fecha_pedido DATE` → Fecha en que se realizó un pedido.
- `hora_entrega TIME` → Hora programada de entrega.

---

### 🔹 **4. Datos Booleanos y Binarios**

| Tipo de Dato  | Tamaño (Bytes) | Descripción | Ejemplo |
|--------------|---------------|-------------|---------|
| **BOOLEAN / BOOL** | 1 | 0 = Falso, 1 = Verdadero | `activo = 1` (usuario activo) |
| **BIT(n)** | 1 a 8 | Número binario con `n` bits | `00101` |

📌 **Ejemplo en una tienda:**
- `disponible BOOLEAN` → Indica si un producto está en stock (`1 = Sí, 0 = No`).

---

## 📌 3️⃣ Elección Correcta de Tipos de Datos ✅

### **1️⃣ Buenas Prácticas**
✅ Usar **VARCHAR** en lugar de **TEXT** cuando la longitud del campo es corta.
✅ Usar **DECIMAL** para cálculos financieros en lugar de **FLOAT**.
✅ Definir **claves primarias** como **INT AUTO_INCREMENT** para eficiencia.
✅ **Elegir tamaños adecuados** (Ejemplo: `VARCHAR(50)` para nombres, no `VARCHAR(255)`).

### **2️⃣ Errores Comunes 🚫**
❌ Usar `VARCHAR(255)` para almacenar códigos pequeños (`CHAR(10)` es más eficiente).
❌ Usar `FLOAT` en cálculos financieros (los decimales pueden perder precisión).
❌ Usar `TEXT` para valores cortos como correos electrónicos (mejor `VARCHAR(100)`).

---

## 📌 4️⃣ Conclusión

Los **tipos de datos** son fundamentales para un diseño óptimo de bases de datos. Elegir correctamente los tipos de datos mejora:
✅ **El rendimiento del sistema**.
✅ **La eficiencia del almacenamiento**.
✅ **La precisión de los cálculos y búsquedas**.

