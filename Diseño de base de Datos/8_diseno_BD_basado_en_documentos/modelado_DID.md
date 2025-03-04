# 📌 Modelado con Diagrama de Interrelación de Documentos (DID)

## 📌 Introducción
El **Diagrama de Interrelación de Documentos (DID)** es una herramienta visual utilizada para modelar bases de datos **NoSQL basadas en documentos**, como **MongoDB**. A diferencia del modelo **relacional**, donde las relaciones se establecen mediante claves foráneas, en el modelo **documental** los datos pueden estar **embebidos** o referenciados, dependiendo del caso de uso.

Este diagrama ayuda a diseñar la estructura de la base de datos antes de su implementación, asegurando una organización eficiente y optimizando las consultas.

---

## 📌 Características del Modelado DID

🔹 **Se basa en documentos JSON/BSON** en lugar de tablas y filas.  
🔹 **Define la relación entre documentos** mediante embebimiento o referencias.  
🔹 **Optimiza las consultas** al diseñar la estructura de almacenamiento según los patrones de acceso a los datos.  
🔹 **Evita el uso excesivo de JOINs**, ya que los datos pueden estar agrupados dentro de un solo documento.  

---

## 📌 Tipos de Relaciones en Bases de Datos Documentales
En las bases de datos NoSQL documentales, hay **dos formas principales** de modelar relaciones entre documentos:

| **Tipo de Relación** | **Descripción** | **Ejemplo** |
|----------------|-------------|----------|
| **Embebida** | Un documento contiene otro documento dentro de sí, lo que optimiza las consultas frecuentes. | Un pedido contiene los productos en su interior. |
| **Referenciada** | Un documento almacena un ID de otro documento en lugar de sus datos completos. | Un pedido solo almacena los IDs de los productos en otra colección. |

📌 **Ejemplo de Relación Embebida (1 a Muchos):**
```json
{
    "id_pedido": "P1001",
    "cliente": {
        "id_cliente": "C500",
        "nombre": "Juan Pérez"
    },
    "productos": [
        {"id_producto": "PR10", "nombre": "Laptop", "precio": 1000},
        {"id_producto": "PR20", "nombre": "Mouse", "precio": 25}
    ]
}
```
✅ **Ventaja:** Rápida consulta de un pedido con sus productos.

📌 **Ejemplo de Relación Referenciada (1 a Muchos):**
```json
{
    "id_pedido": "P1001",
    "id_cliente": "C500",
    "productos": ["PR10", "PR20"]
}
```

```json
{
    "id_producto": "PR10",
    "nombre": "Laptop",
    "precio": 1000
}
```
✅ **Ventaja:** Menor redundancia en productos reutilizados en múltiples pedidos.

---

## 📌 ¿Cuándo Embeder y Cuándo Referenciar?

| **Criterio** | **Embebido** | **Referenciado** |
|-------------|------------|---------------|
| Frecuencia de acceso a datos | Se acceden juntos frecuentemente. | Se acceden por separado con consultas diferentes. |
| Tamaño del documento | Si es pequeño o moderado. | Si los datos son muy grandes o se repiten en varios lugares. |
| Consistencia | Menos riesgo de inconsistencia. | Permite actualizar en un solo lugar sin afectar otros documentos. |

---

## 📌 Diagrama de Interrelación de Documentos (DID)
El **DID** representa visualmente cómo se relacionan los documentos dentro de una base NoSQL basada en documentos.

Ejemplo de un **DID para un eCommerce:**

```
  Cliente
   ├── id_cliente (PK)
   ├── nombre
   ├── email
   ├── direcciones []  (Embebido)

  Pedido
   ├── id_pedido (PK)
   ├── id_cliente (FK) → Cliente
   ├── productos [] (Embebido/Referenciado)

  Producto
   ├── id_producto (PK)
   ├── nombre
   ├── precio
```

✅ **Ventaja:** Permite visualizar qué datos estarán embebidos y cuáles referenciados antes de implementarlos.

---

## 📌 Pasos para Modelar una Base de Datos con DID

1️⃣ **Identificar las entidades principales** 📌 *(Clientes, Pedidos, Productos, etc.)*  
2️⃣ **Definir los atributos de cada entidad** 📌 *(id, nombre, email, etc.)*  
3️⃣ **Decidir qué datos embeder y cuáles referenciar** 📌 *(¿Un pedido debe contener los productos embebidos o solo sus IDs?)*  
4️⃣ **Dibujar el Diagrama de Interrelación de Documentos** 📌 *(Antes de implementar la base de datos en MongoDB u otra tecnología NoSQL)*  

---

## 📌 Conclusión
✅ **El DID facilita la organización de bases NoSQL documentales** antes de su implementación.  
✅ **Permite visualizar cómo se almacenarán y consultarán los datos** para evitar problemas de rendimiento.  
✅ **Es clave para diseñar bases de datos escalables y eficientes en MongoDB y otras NoSQL.**  



