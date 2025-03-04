# 📌 Ejemplo Práctico: Tienda de eCommerce en MongoDB

## 📌 Introducción
Este caso práctico muestra cómo diseñar y estructurar una base de datos NoSQL en **MongoDB** para una tienda de comercio electrónico (**eCommerce**). Implementaremos un esquema eficiente utilizando el **Diagrama de Interrelación de Documentos (DID)** y explicaremos cómo modelar los datos para optimizar consultas y rendimiento.

---

## 📌 Diseño del Modelo Documental

En este ejemplo, tenemos las siguientes entidades:

- **Clientes** (Usuarios que compran productos en la tienda).
- **Pedidos** (Órdenes realizadas por los clientes).
- **Productos** (Items disponibles en la tienda).
- **Categorías** (Clasificación de los productos).
- **Métodos de pago** (Formas en que los clientes pagan sus pedidos).

### 🔹 **DID (Diagrama de Interrelación de Documentos)**

```
  Cliente
   ├── id_cliente (PK)
   ├── nombre
   ├── email
   ├── dirección [] (Embebido)

  Pedido
   ├── id_pedido (PK)
   ├── id_cliente (FK) → Cliente
   ├── productos [] (Embebido/Referenciado)
   ├── fecha_pedido
   ├── total
   ├── método_pago (Embebido)

  Producto
   ├── id_producto (PK)
   ├── nombre
   ├── precio
   ├── id_categoria (FK) → Categoría
   ├── stock

  Categoría
   ├── id_categoria (PK)
   ├── nombre
```

---

## 📌 Implementación en MongoDB

### 🔹 **Colección Clientes** (Embebiendo direcciones)
```json
{
    "_id": "C1001",
    "nombre": "Juan Pérez",
    "email": "juanperez@email.com",
    "direccion": [
        {
            "calle": "Av. Principal 123",
            "ciudad": "Ciudad X",
            "codigo_postal": "12345"
        }
    ]
}
```

### 🔹 **Colección Productos**
```json
{
    "_id": "P2001",
    "nombre": "Laptop Gamer",
    "precio": 1200,
    "id_categoria": "CAT10",
    "stock": 15
}
```

### 🔹 **Colección Categorías**
```json
{
    "_id": "CAT10",
    "nombre": "Electrónica"
}
```

### 🔹 **Colección Pedidos** (Referenciando productos y embebiendo método de pago)
```json
{
    "_id": "O3001",
    "id_cliente": "C1001",
    "productos": [
        { "id_producto": "P2001", "cantidad": 1 }
    ],
    "fecha_pedido": "2024-03-04",
    "total": 1200,
    "metodo_pago": {
        "tipo": "Tarjeta de crédito",
        "proveedor": "Visa"
    }
}
```

---

## 📌 Consultas en MongoDB

### 🔹 **Buscar todos los productos de una categoría específica**
```js
db.productos.find({ "id_categoria": "CAT10" })
```

### 🔹 **Obtener todos los pedidos de un cliente**
```js
db.pedidos.find({ "id_cliente": "C1001" })
```

### 🔹 **Actualizar el stock de un producto tras una compra**
```js
db.productos.updateOne(
    { "_id": "P2001" },
    { "$inc": { "stock": -1 } }
)
```

---

## 📌 Conclusión
✅ **Este modelo híbrido** permite un balance entre rendimiento y normalización.  
✅ **Los datos embebidos** en **Pedidos** optimizan consultas frecuentes.  
✅ **Las referencias en Productos y Categorías** reducen la redundancia.  



