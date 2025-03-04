# 📌 Práctica 02 - Diseño Avanzado de Diagrama E-R para un Sistema de Pedidos 📦

En esta práctica, diseñaremos un **Diagrama Entidad-Relación (E-R) avanzado** para un **Sistema de Gestión de Pedidos**. Este sistema está diseñado para empresas que manejan múltiples clientes, pedidos y productos, considerando también facturación y logística.

---

## **📌 1️⃣ Paso 1: Identificación de Entidades**

Para un sistema de pedidos complejo, identificamos las siguientes **entidades principales**:

- **Cliente** (Persona o empresa que realiza pedidos)
- **Pedido** (Registro de compras)
- **Producto** (Artículos disponibles para la venta)
- **Empleado** (Persona que procesa los pedidos)
- **Pago** (Información de pago del cliente)
- **Factura** (Documento asociado a cada pedido)
- **Envío** (Información de entrega del pedido)

📌 **Ejemplo en papel** 📝:
```
[ Cliente ] --- (Realiza) --- [ Pedido ] --- (Contiene) --- [ Producto ]
                |                   |
        (Gestionado por)       (Asociado a)
                |                   |
        [ Empleado ]           [ Factura ]
                |
       (Recibe pago)
                |
        [ Pago ] --- (Confirma) --- [ Envío ]
```

---

## **📌 2️⃣ Paso 2: Definición de Atributos**

Cada entidad debe tener sus **atributos clave**.

### **Entidad: Cliente** 🧑‍💼
| Atributo       | Tipo de Dato    | Descripción                  |
|---------------|---------------|------------------------------|
| id_cliente    | INT (PK)      | Identificador único del cliente |
| nombre        | VARCHAR(100)  | Nombre del cliente          |
| email         | VARCHAR(100)  | Correo electrónico del cliente |
| telefono      | VARCHAR(15)   | Número de contacto         |
| direccion     | VARCHAR(255)  | Dirección de entrega       |

### **Entidad: Pedido** 📦
| Atributo       | Tipo de Dato    | Descripción                  |
|---------------|---------------|------------------------------|
| id_pedido     | INT (PK)      | Identificador único del pedido |
| id_cliente    | INT (FK)      | Cliente que realizó el pedido |
| id_empleado   | INT (FK)      | Empleado que gestionó el pedido |
| fecha_pedido  | DATE          | Fecha de realización del pedido |
| estado        | VARCHAR(50)   | Estado del pedido (En proceso, Enviado, Entregado) |

### **Entidad: Producto** 🏷️
| Atributo       | Tipo de Dato    | Descripción                  |
|---------------|---------------|------------------------------|
| id_producto   | INT (PK)      | Identificador único del producto |
| nombre        | VARCHAR(100)  | Nombre del producto         |
| precio        | DECIMAL(10,2) | Precio del producto        |
| stock        | INT           | Cantidad disponible        |

### **Entidad: Factura** 🧾
| Atributo       | Tipo de Dato    | Descripción                  |
|---------------|---------------|------------------------------|
| id_factura    | INT (PK)      | Identificador único de la factura |
| id_pedido     | INT (FK)      | Pedido asociado |
| fecha_factura | DATE          | Fecha de emisión |
| total         | DECIMAL(10,2) | Monto total facturado |

### **Entidad: Pago** 💳
| Atributo       | Tipo de Dato    | Descripción                  |
|---------------|---------------|------------------------------|
| id_pago       | INT (PK)      | Identificador del pago |
| id_pedido     | INT (FK)      | Pedido asociado |
| metodo_pago   | VARCHAR(50)   | Tarjeta, Transferencia, PayPal |
| estado_pago   | VARCHAR(50)   | Aprobado, Rechazado, Pendiente |

### **Entidad: Envío** 🚚
| Atributo       | Tipo de Dato    | Descripción                  |
|---------------|---------------|------------------------------|
| id_envio      | INT (PK)      | Identificador del envío |
| id_pedido     | INT (FK)      | Pedido asociado |
| empresa_envio | VARCHAR(50)   | Empresa de mensajería |
| fecha_envio   | DATE          | Fecha de salida |
| estado_envio  | VARCHAR(50)   | En tránsito, Entregado |

---

## **📌 3️⃣ Paso 3: Definición de Relaciones**

- Un **Cliente** puede realizar **muchos pedidos** (1:N).
- Un **Pedido** puede contener **varios productos**, y un **producto** puede estar en **varios pedidos** (N:M).
- Un **Empleado** puede gestionar **varios pedidos**, pero cada pedido es gestionado por un solo empleado (1:N).
- Un **Pedido** genera **una factura** (1:1).
- Un **Pedido** tiene **un pago** (1:1).
- Un **Pedido** puede tener **un envío** (1:1 o 1:N, dependiendo de la empresa).

📌 **Ejemplo Gráfico Digital** 🎨
```
[ Cliente ] 1 - N [ Pedido ] N - M [ Producto ]
                |               |
        1 - N [ Factura ]     1 - 1 [ Pago ]
                |
             1 - 1
             [ Envío ]
```

---

## **📌 4️⃣ Paso 4: Normalización**

Para garantizar la **eficiencia y consistencia** de la base de datos, aplicamos **normalización:**

1. **Primera Forma Normal (1FN):**
   - Todos los datos deben ser atómicos.
2. **Segunda Forma Normal (2FN):**
   - Cada atributo debe depender completamente de la clave primaria.
3. **Tercera Forma Normal (3FN):**
   - Se eliminan dependencias transitivas.

---

## **📌 5️⃣ Herramientas para Diseñar Diagramas E-R** 🛠️

| Herramienta | Tipo | Facilidad de Uso |
|------------|------|-----------------|
| **MySQL Workbench** | Gratuito | Fácil |
| **Draw.io** | Gratuito | Muy Fácil |
| **Lucidchart** | Pago/Gratis limitado | Fácil |
| **Dbdiagram.io** | Gratuito | Muy Fácil |
| **Microsoft Visio** | Pago | Medio |
| **AI ChatDB Designer** | IA/Automático | Fácil |

🔹 **Recomendaciones:**
- **Para principiantes:** Draw.io, Dbdiagram.io.
- **Para empresas:** Microsoft Visio, Lucidchart.
- **Con IA:** AI ChatDB Designer para generar diagramas automáticamente.

---

## **📌 6️⃣ Conclusión**

Con esta práctica, diseñamos un **Diagrama E-R avanzado** para un **Sistema de Pedidos**, asegurando un diseño eficiente y escalable.

🚀 **¡Ahora puedes diseñar tu propio sistema de pedidos y convertirlo en una base de datos funcional!** 🎯

