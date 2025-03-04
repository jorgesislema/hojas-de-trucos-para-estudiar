# 📌 Plantilla de Levantamiento de Requerimientos para Tienda Pequeña 🏪

Esta plantilla está diseñada para ayudar a pequeños comerciantes y emprendedores a **definir correctamente los datos que manejarán en su base de datos** antes de implementarla.

---

## 📌 1️⃣ Información General del Negocio

| Pregunta                          | Respuesta |
|----------------------------------|-----------|
| **Nombre del negocio:**         |           |
| **Tipo de productos vendidos:** |           |
| **Número de empleados:**        |           |
| **Ubicación física (si aplica):** |           |
| **¿Vendes en línea? (Sí/No):** |           |
| **¿Usas un sistema actual para registrar ventas? (Sí/No)** |           |

---

## 📌 2️⃣ Datos a Registrar

| Entidad          | Información Clave |
|----------------|-----------------|
| **Clientes**   | Nombre, Teléfono, Correo (opcional) |
| **Productos**  | Nombre, Precio, Stock, Categoría |
| **Ventas**     | Fecha, Cliente (opcional), Productos Vendidos, Total |
| **Proveedores** | Nombre, Contacto, Tipo de Producto |

✅ **Opcional:** ¿El negocio maneja descuentos o programas de fidelización? __ Sí / No __

---

## 📌 3️⃣ Relación entre los Datos

### **Ejemplo de Relación:**
- **Un cliente puede hacer varias compras**, pero una compra pertenece a un solo cliente.
- **Una venta puede incluir varios productos**, y **un producto puede estar en varias ventas**.

✅ **Confirmación de Relaciones:**
- ¿Cada producto tiene un solo proveedor? __ Sí / No __
- ¿Un cliente puede tener crédito o solo compras directas? __ Crédito / Directo __

---

## 📌 4️⃣ Seguridad y Permisos

| Pregunta                          | Respuesta |
|----------------------------------|-----------|
| **¿Quién accederá a la base de datos?** | Dueño, Empleados, Contador, Otro |
| **¿Se necesita control de acceso por usuario?** | Sí / No |
| **¿Se necesita hacer respaldos de datos?** | Sí / No |
| **¿Qué datos deben ser privados?** | Clientes, Ventas, Inventario |

---

## 📌 5️⃣ Reportes y Consultas Necesarias 📊

| Reporte Necesario | Frecuencia |
|------------------|------------|
| Ventas Diarias  | Diario |
| Productos más vendidos | Semanal |
| Inventario bajo stock | Mensual |
| Clientes frecuentes | Mensual |

✅ ¿El negocio necesita facturación electrónica? __ Sí / No __

---

## 📌 6️⃣ Crecimiento del Negocio

- ¿Se espera expandir el negocio en los próximos años? __ Sí / No __
- ¿Se planea vender en línea en el futuro? __ Sí / No __

✅ **Si la empresa planea crecer, la base de datos debe estar diseñada para manejar más productos, clientes y ventas sin problemas.** 🚀

---

## 📌 Conclusión

Esta plantilla ayudará a **estructurar la base de datos correctamente desde el inicio** para evitar problemas en el futuro. Un buen diseño facilita el control del negocio y **reduce errores en la gestión de inventarios y ventas**.

**¡Ahora estás listo para empezar a diseñar la base de datos para tu tienda pequeña!** 🏪🎉

