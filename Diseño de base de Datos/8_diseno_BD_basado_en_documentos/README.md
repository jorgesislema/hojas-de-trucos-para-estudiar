# 📌 Diseño de Bases de Datos NoSQL

## 📌 Introducción
Las bases de datos **NoSQL** han surgido como una alternativa a las bases de datos **relacionales (SQL)** cuando se requiere **flexibilidad, escalabilidad y rendimiento en grandes volúmenes de datos**. NoSQL significa "Not Only SQL" y abarca diferentes **modelos de almacenamiento**, cada uno optimizado para casos de uso específicos.

A diferencia de las bases **relacionales**, NoSQL no sigue estrictamente el **modelo tabular**, lo que permite **mayor eficiencia en el manejo de datos no estructurados o semiestructurados**.

---

## 📌 Tipos de Bases de Datos NoSQL

Las bases de datos NoSQL se pueden clasificar en **cuatro categorías principales**, cada una con ventajas y desventajas según el caso de uso:

| Tipo de Base de Datos | Descripción | Ejemplo de Uso | Ejemplos de Tecnologías |
|----------------------|-------------|---------------|---------------------|
| **Clave-Valor** | Almacena pares clave-valor, similar a un diccionario. Muy rápido y eficiente para búsquedas simples. | Caché de sesiones, Configuraciones rápidas | Redis, DynamoDB, Riak |
| **Basadas en Documentos** | Almacena datos en **documentos JSON o BSON** que pueden contener estructuras jerárquicas. | Aplicaciones web, eCommerce, CRM | MongoDB, CouchDB, Firebase |
| **Columnar** | Los datos se almacenan en columnas en lugar de filas, lo que mejora la lectura de grandes volúmenes de datos. | Big Data, Analítica | Apache Cassandra, HBase, BigTable |
| **Grafos** | Almacena datos en **nodos y relaciones**, ideal para analizar conexiones y estructuras de red. | Redes sociales, Motores de recomendación | Neo4j, ArangoDB, Amazon Neptune |

---

## 📌 Comparación entre SQL y NoSQL

| Característica | SQL (Relacional) | NoSQL |
|--------------|----------------|------|
| **Estructura** | Tablas y relaciones definidas con esquemas rígidos | Datos flexibles sin esquema fijo |
| **Escalabilidad** | Vertical (servidor más potente) | Horizontal (agregar más servidores) |
| **Transacciones (ACID)** | Soporta transacciones **ACID** (Atomicidad, Consistencia, Aislamiento, Durabilidad) | Algunas NoSQL sacrifican ACID por velocidad y escalabilidad |
| **Consultas** | SQL (SELECT, JOIN, etc.) | APIs y consultas específicas por tipo de BD |
| **Casos de Uso** | Sistemas financieros, ERP, CRM | Big Data, aplicaciones web, IoT, redes sociales |

📌 **Conclusión**: **SQL** es ideal para datos altamente estructurados con reglas estrictas, mientras que **NoSQL** se adapta mejor a datos cambiantes, grandes volúmenes y alta escalabilidad.

---

## 📌 Casos de Uso de Bases de Datos NoSQL

### 🔹 **1. Aplicaciones Web y Móviles (MongoDB, Firebase)**
Ejemplo: Una plataforma de eCommerce donde cada **producto** tiene características diferentes y la estructura de datos varía según la categoría.

```json
{
    "id_producto": "P12345",
    "nombre": "Laptop Gamer",
    "especificaciones": {
        "procesador": "Intel i9",
        "ram": "16GB",
        "almacenamiento": "1TB SSD"
    },
    "precio": 1500,
    "stock": 25
}
```

### 🔹 **2. Motores de Recomendación (Grafos - Neo4j)**
Ejemplo: Relación entre usuarios y productos en una plataforma de streaming.

```cypher
CREATE (:Usuario {nombre:"Carlos"})-[:VIÓ]->(:Película {titulo:"Matrix"})
```

### 🔹 **3. Big Data y Analítica (Apache Cassandra, HBase)**
Ejemplo: Una empresa de telecomunicaciones almacena registros de llamadas en una base de datos columnar para consultas rápidas:

| Cliente | Fecha | Duración (min) | Costo |
|---------|------------|--------------|-------|
| 10234 | 2024-03-10 | 15 | 3.50 |
| 10235 | 2024-03-10 | 5  | 1.00 |

### 🔹 **4. Caché y Sesiones (Redis, DynamoDB)**
Ejemplo: Almacenamiento de sesiones de usuarios para mantenerlos autenticados.

```python
import redis
r = redis.Redis()
r.set("usuario:1234", "activo")
```

---

## 📌 Ventajas y Desventajas de NoSQL

| **Ventajas** ✅ | **Desventajas** ❌ |
|---------------|----------------|
| Escalabilidad horizontal | No siempre soporta transacciones ACID |
| Modelos de datos flexibles | Consultas más complejas sin SQL |
| Alto rendimiento en grandes volúmenes | No es ideal para datos altamente relacionales |
| Ideal para datos no estructurados | Menos madurez en algunos sistemas NoSQL |

---

## 📌 Conclusión
✅ **Las bases de datos NoSQL** son una excelente opción para **Big Data, aplicaciones escalables y datos flexibles**.
✅ **No reemplazan completamente SQL**, sino que **se usan cuando se necesitan modelos flexibles y escalabilidad horizontal**.
✅ **Elegir la base de datos adecuada** depende del **caso de uso** y de la **estructura de los datos**.



