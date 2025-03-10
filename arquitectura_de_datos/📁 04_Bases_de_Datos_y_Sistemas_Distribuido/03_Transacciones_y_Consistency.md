# 📌 Transacciones y Consistencia: ACID, CAP Theorem y BASE

## 📌 Introducción
Las bases de datos modernas necesitan **garantizar la consistencia y disponibilidad** mientras manejan transacciones complejas y sistemas distribuidos. Los modelos **ACID, CAP y BASE** definen estrategias para lograrlo.

En este documento exploraremos:
✅ **ACID: Propiedades para garantizar transacciones seguras.**  
✅ **CAP Theorem: Restricciones en sistemas distribuidos.**  
✅ **BASE: Alternativa flexible a ACID para escalabilidad.**  
✅ **Casos de uso y ejemplos en SQL y NoSQL.**  

---

## 📍 1. Modelo ACID en Bases de Datos Relacionales 🏛️

### 📌 Definición
El modelo **ACID** garantiza que las transacciones en bases de datos sean seguras y consistentes.

### 🔹 **Propiedades ACID**
✅ **Atomicidad** → La transacción se ejecuta completamente o no se ejecuta.  
✅ **Consistencia** → La base de datos siempre pasa de un estado válido a otro.  
✅ **Aislamiento** → Cada transacción es independiente de las demás.  
✅ **Durabilidad** → Una vez confirmada, una transacción persiste en la base de datos.

📄 **Ejemplo en SQL:**
```sql
BEGIN TRANSACTION;
UPDATE cuentas SET saldo = saldo - 500 WHERE id = 1;
UPDATE cuentas SET saldo = saldo + 500 WHERE id = 2;
COMMIT;
```
✅ **Beneficio:** Asegura que si un fallo ocurre en medio del proceso, ninguna cuenta quede con datos inconsistentes.

❌ **Desventajas:**  
❌ Puede afectar el rendimiento en bases de datos con alta concurrencia.  
❌ Menos escalabilidad en entornos distribuidos.

---

## 📍 2. CAP Theorem en Sistemas Distribuidos ⚖️

### 📌 Definición
El **CAP Theorem** establece que en un sistema distribuido, solo se pueden garantizar **dos de las tres propiedades**:

✅ **Consistencia (C)** → Todos los nodos ven los mismos datos en el mismo momento.  
✅ **Disponibilidad (A)** → Cada solicitud recibe una respuesta sin garantía de que los datos estén actualizados.  
✅ **Tolerancia a Particiones (P)** → El sistema sigue funcionando a pesar de fallos en la red.

📄 **Ejemplo en NoSQL (Cassandra vs MongoDB):**
| **Base de Datos** | **Prioriza** |
|------------------|-------------|
| **MongoDB** | CP (Consistencia y Particionamiento) |
| **Cassandra** | AP (Alta disponibilidad y particionamiento) |

✅ **Beneficio:** Permite elegir la mejor arquitectura según el caso de uso.

❌ **Desventajas:** No se pueden cumplir las tres propiedades simultáneamente.

---

## 📍 3. Modelo BASE en NoSQL 🔀

### 📌 Definición
El modelo **BASE** es una alternativa más flexible a ACID, utilizada en bases de datos NoSQL para mejorar la escalabilidad.

### 🔹 **Características de BASE**
✅ **Básicamente Disponible** → El sistema responde siempre, aunque los datos no sean los más recientes.  
✅ **Estado Suave** → Los datos pueden cambiar con el tiempo.  
✅ **Eventual Consistency** → La consistencia se alcanza después de un período de tiempo.  

📄 **Ejemplo en DynamoDB (Eventual Consistency):**
```json
{
    "id": 1,
    "usuario": "Juan",
    "saldo": 5000
}
```
✅ **Beneficio:** Mayor escalabilidad y rapidez en aplicaciones de Big Data y sistemas globales.

❌ **Desventajas:** No garantiza consistencia inmediata, lo que puede afectar aplicaciones financieras o críticas.

---

## 📍 4. Comparación ACID vs BASE vs CAP 📊

| **Característica** | **ACID** | **CAP Theorem** | **BASE** |
|-------------------|---------|---------------|---------|
| **Consistencia** | Alta | Opcional (Depende de CP o AP) | Eventual |
| **Escalabilidad** | Baja | Media | Alta |
| **Caso de Uso** | Bancos, ERP | Sistemas Distribuidos | Big Data, IoT |

---

## 📍 5. Errores Comunes y Soluciones 🚨

### ❌ **Error #1: Usar ACID cuando se necesita escalabilidad**
✔ **Solución:** Si el sistema requiere escalabilidad global, usar **BASE con Eventual Consistency**.

### ❌ **Error #2: No considerar las limitaciones del CAP Theorem**
✔ **Solución:** Identificar si la prioridad es **consistencia fuerte (CP) o disponibilidad alta (AP)**.

### ❌ **Error #3: No definir bien la arquitectura de replicación en BASE**
✔ **Solución:** Implementar particionamiento adecuado para evitar desbalance de carga.

### ❌ **Error #4: No optimizar transacciones en SQL**
✔ **Solución:** Usar índices y particionamiento en bases de datos relacionales para mejorar el rendimiento de transacciones.

---

## 📍 6. ¿Cuándo Usar ACID vs BASE? ✅

✅ **Usa ACID si:**  
- Necesitas **consistencia fuerte y transacciones seguras** (Ej. Bancos, ERP).  
- Requieres **consultas estructuradas y relaciones complejas**.  

✅ **Usa BASE si:**  
- Tu sistema necesita **alta escalabilidad y disponibilidad global** (Ej. Redes Sociales, Big Data).  
- Puedes tolerar **eventual consistency** sin afectar el negocio.

📌 **Elegir la estrategia correcta depende del tipo de datos, escalabilidad y requisitos de negocio.**


