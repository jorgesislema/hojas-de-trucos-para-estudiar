📌 Preguntas Básicas sobre Diseño de Bases de Datos

📌 Introducción

Este documento contiene 50 preguntas esenciales sobre el diseño de bases de datos, enfocándose en la planificación, modelado y estructuración de bases de datos antes de la programación.

# 🏆 Sección 1: Conceptos Fundamentales

1️⃣ **¿Qué es una base de datos y por qué es importante en los sistemas de información?**  
Una **base de datos** es una colección organizada de datos que permite almacenar, gestionar y recuperar información de manera eficiente. Son importantes en los sistemas de información porque garantizan:
   - **Persistencia:** Los datos se mantienen a lo largo del tiempo.
   - **Accesibilidad:** Los usuarios y sistemas pueden consultar datos de manera rápida.
   - **Seguridad:** Protección contra accesos no autorizados.
   - **Integridad:** Asegura que los datos sean consistentes y precisos.

Ejemplo: Un **sistema de ventas** almacena información sobre clientes, productos y transacciones para su consulta y análisis posterior.

2️⃣ **¿Cuál es la diferencia entre datos e información en el contexto del diseño de bases de datos?**  
- **Dato:** Unidad básica de información sin contexto. Ejemplo: "2024".
- **Información:** Datos procesados y organizados para tener significado. Ejemplo: "El cliente Juan pidió un producto en 2024".

3️⃣ **¿Qué es un sistema de gestión de bases de datos (DBMS) y qué función cumple?**  
Un **DBMS (Database Management System)** es un software que facilita la creación, administración y manipulación de bases de datos. Sus funciones principales incluyen:
   - **Definir** la estructura de la base de datos.
   - **Insertar, actualizar y eliminar** datos de manera controlada.
   - **Controlar accesos y permisos** para garantizar seguridad.
   - **Optimizar el rendimiento** de las consultas.
   
Ejemplo de DBMS: MySQL, PostgreSQL, MongoDB, Oracle, SQL Server.

4️⃣ **¿Cuáles son los diferentes modelos de bases de datos y en qué se diferencian?**  
Los modelos de bases de datos definen cómo se organizan los datos:
- **Relacional (SQL):** Basado en tablas con relaciones entre ellas (Ejemplo: MySQL, PostgreSQL).
- **NoSQL:** Diseñado para datos no estructurados o grandes volúmenes (Ejemplo: MongoDB, Redis, Neo4j).
- **Jerárquico:** Estructura en árbol con datos en niveles (Ejemplo: IMS de IBM).
- **Red:** Relación en malla con enlaces entre registros (Ejemplo: IDMS).

5️⃣ **¿Qué significa la escalabilidad en bases de datos y cómo afecta su diseño?**  
La escalabilidad se refiere a la capacidad de una base de datos de manejar una carga creciente de datos y usuarios. Tipos:
- **Escalabilidad vertical:** Se mejora el hardware del servidor.
- **Escalabilidad horizontal:** Se agregan más servidores.

Ejemplo: Facebook utiliza bases de datos escalables horizontalmente para gestionar billones de interacciones diarias.

6️⃣ **¿Qué es la integridad de datos y por qué es clave en el diseño de bases de datos?**  
La **integridad de datos** garantiza que la información almacenada sea correcta y consistente. Tipos:
- **Integridad de entidad:** Cada registro tiene una clave primaria única.
- **Integridad referencial:** Relación coherente entre tablas.
- **Integridad de dominio:** Datos en formato correcto (Ejemplo: Números en campos de edad).

Ejemplo: En un sistema bancario, la integridad evita errores como transferencias a cuentas inexistentes.

7️⃣ **¿Cómo se define una entidad dentro del modelado de una base de datos?**  
Una **entidad** es un objeto o concepto sobre el que se almacena información.
- Ejemplo de entidad: **Cliente** en una tienda, con atributos como "Nombre" y "Correo".
- Representado en diagramas E-R con rectángulos.

8️⃣ **¿Qué es un atributo y qué tipos de atributos existen en bases de datos?**  
Los **atributos** representan características de una entidad. Tipos:
- **Simples:** No pueden dividirse (Ejemplo: DNI).
- **Compuestos:** Se dividen en subatributos (Ejemplo: "Dirección" con "Calle" y "Número").
- **Derivados:** Calculados a partir de otros datos (Ejemplo: "Edad" a partir de "Fecha de nacimiento").
- **Multivaluados:** Pueden contener varios valores (Ejemplo: "Teléfonos" de un cliente).

9️⃣ **¿Qué es una clave primaria y por qué es importante en el diseño de bases de datos?**  
La **clave primaria (PK)** es un identificador único para cada registro en una tabla.
- **Garantiza la unicidad.**
- **Facilita la búsqueda y ordenación de datos.**
- **Ejemplo:** En una tabla "Clientes", la columna "id_cliente" podría ser la clave primaria.

🔟 **¿Cómo funcionan las claves foráneas y qué rol desempeñan en la integridad referencial?**  
Una **clave foránea (FK)** establece una relación entre dos tablas, garantizando que un dato en una tabla exista en otra.
- **Ejemplo:** En una base de datos de pedidos, la tabla "Pedidos" tiene "id_cliente" como clave foránea que referencia a la tabla "Clientes".

```sql
CREATE TABLE Clientes (
    id_cliente INT PRIMARY KEY,
    nombre VARCHAR(100)
);

CREATE TABLE Pedidos (
    id_pedido INT PRIMARY KEY,
    id_cliente INT,
    fecha DATE,
    FOREIGN KEY (id_cliente) REFERENCES Clientes(id_cliente)
);
```
✅ Esto asegura que un pedido no pueda existir sin un cliente válido.

# 🏆 Sección 2: Modelado de Datos

1️⃣ **¿Qué es un diagrama entidad-relación (ER) y para qué se usa?**  
Un **Diagrama Entidad-Relación (ER)** es una representación visual de los datos y sus relaciones dentro de una base de datos. Se usa para:
- **Modelar la estructura de los datos** antes de implementarlos en un DBMS.
- **Visualizar entidades y relaciones** para mejorar el diseño.
- **Facilitar la comunicación** entre diseñadores, desarrolladores y clientes.

Ejemplo: Un sistema de biblioteca puede representar "Libros", "Autores" y "Usuarios" en un diagrama ER.

---

2️⃣ **¿Cuáles son los principales componentes de un diagrama ER?**  
- **Entidades:** Representan objetos reales o conceptos (Ejemplo: Cliente, Producto).
- **Atributos:** Características de una entidad (Ejemplo: Nombre, Teléfono).
- **Relaciones:** Vínculos entre entidades (Ejemplo: Un cliente hace un pedido).
- **Cardinalidad:** Define cuántas instancias de una entidad pueden estar relacionadas con otra.
- **Clave primaria:** Identificador único dentro de una entidad.

---

3️⃣ **¿Qué es una relación en bases de datos y qué tipos existen?**  
Una **relación** es un vínculo entre dos o más entidades.
- **Uno a Uno (1:1):** Un empleado tiene una credencial.
- **Uno a Muchos (1:N):** Un cliente puede hacer muchos pedidos.
- **Muchos a Muchos (M:N):** Un estudiante puede estar en varios cursos y un curso puede tener varios estudiantes.

---

4️⃣ **¿Qué es la cardinalidad en bases de datos y cómo se representa en un modelo ER?**  
La **cardinalidad** define cuántos elementos de una entidad pueden estar asociados con otra entidad.
- **1:1** → Un país tiene una capital.
- **1:N** → Un cliente puede hacer varios pedidos, pero un pedido pertenece a un solo cliente.
- **M:N** → Un autor puede escribir varios libros y un libro puede tener varios autores.

Se representa en diagramas ER con símbolos como "1", "N" o "M" en las líneas que conectan entidades.

---

5️⃣ **¿Cuáles son los pasos básicos para diseñar un modelo conceptual de base de datos?**  
1. **Identificar entidades** (Ejemplo: Clientes, Productos, Pedidos).
2. **Definir atributos** (Ejemplo: Nombre, Precio, Fecha de compra).
3. **Establecer relaciones** entre entidades (Ejemplo: Un cliente hace varios pedidos).
4. **Determinar la cardinalidad** (Ejemplo: Un cliente puede hacer múltiples pedidos).
5. **Dibujar el diagrama ER** para visualizar el modelo.

---

6️⃣ **¿Cuál es la diferencia entre modelado conceptual, lógico y físico en bases de datos?**  
- **Modelado Conceptual:** Representa los datos y sus relaciones de forma abstracta (Diagrama ER).
- **Modelado Lógico:** Convierte el modelo conceptual en estructuras específicas (Tablas, Claves Primarias y Foráneas).
- **Modelado Físico:** Define la implementación en un DBMS (Tipos de datos, índices, almacenamiento).

Ejemplo:
- Conceptual: "Clientes hacen pedidos" (Diagrama ER).
- Lógico: Tabla Clientes y Tabla Pedidos con clave foránea.
- Físico: Implementación en MySQL con **VARCHAR(100)** para nombres.

---

7️⃣ **¿Qué es la generalización y especialización en un modelo de base de datos?**  
- **Generalización:** Combina entidades similares en una entidad más amplia.  
  *Ejemplo:* "Carro" y "Motocicleta" pueden generalizarse en "Vehículo".
- **Especialización:** Divide una entidad en subconjuntos específicos.  
  *Ejemplo:* "Empleado" puede especializarse en "Gerente" y "Técnico".

---

8️⃣ **¿Cómo se representa una entidad débil y cuál es su función?**  
Una **entidad débil** es aquella que no tiene una clave primaria propia y depende de una entidad fuerte.
- Se representa con un rectángulo doble en diagramas ER.
- **Ejemplo:** Una "Factura" es una entidad débil porque depende de "Cliente" para existir.

---

9️⃣ **¿Qué es la herencia en bases de datos y cómo se aplica en el modelado?**  
La **herencia** permite que una entidad "hija" herede atributos y relaciones de una entidad "padre".
- Se usa en bases de datos orientadas a objetos y modelos ER extendidos.
- **Ejemplo:** En una universidad, la entidad "Persona" puede tener subtipos como "Profesor" y "Estudiante".

---

0️⃣ **¿Cómo elegir el mejor modelo de base de datos para un proyecto específico?**  
Depende de los **requerimientos del negocio**:
- **Si necesitas transacciones seguras:** Modelo Relacional (SQL).
- **Si los datos son no estructurados:** NoSQL (Documental, Grafos, Columnar).
- **Si necesitas consultas rápidas en grandes volúmenes:** Bases Columnar o Clave-Valor.

Ejemplo:
- Un **banco** necesita SQL para garantizar la integridad de las transacciones.
- Un **sistema de recomendaciones** usa bases de datos de grafos como Neo4j.

---

# 🏆 Sección 3: Normalización y Optimización

1️⃣ **¿Qué es la normalización en bases de datos y cuál es su propósito?**  
La **normalización** es un proceso para organizar los datos en una base de datos con el objetivo de **eliminar redundancias y mejorar la integridad**. Su propósito es:
- **Evitar datos duplicados** en múltiples tablas.
- **Minimizar inconsistencias** asegurando que cada dato tenga una única representación.
- **Optimizar consultas** y mejorar el rendimiento general del sistema.

Ejemplo: Si una tabla de pedidos almacena información del cliente (nombre, dirección), en lugar de repetir estos datos en cada pedido, se crea una tabla aparte de clientes referenciada con una clave foránea.

---

2️⃣ **¿Cuáles son las ventajas de aplicar la normalización en el diseño de bases de datos?**  
✅ **Evita la redundancia de datos** y optimiza el almacenamiento.  
✅ **Mejora la integridad de los datos**, evitando inconsistencias.  
✅ **Facilita la actualización de la información**, ya que los datos se almacenan en un solo lugar.  
✅ **Reduce problemas de inserción, eliminación y modificación**.  
✅ **Optimiza el rendimiento de las consultas** al reducir la cantidad de datos innecesarios.

---

3️⃣ **¿Cuáles son las diferencias entre la Primera, Segunda y Tercera Forma Normal?**  

1. **Primera Forma Normal (1FN)** 📌  
   - Elimina **grupos repetitivos** dentro de una tabla.
   - Garantiza que todos los valores sean **atómicos** (sin listas o valores compuestos).
   - **Ejemplo Incorrecto:**
     | id_pedido | productos            |
     |-----------|---------------------|
     | 101       | Laptop, Mouse       |
   - **Corrección en 1FN:**
     | id_pedido | id_producto | producto |
     |-----------|------------|----------|
     | 101       | 1          | Laptop   |
     | 101       | 2          | Mouse    |

2. **Segunda Forma Normal (2FN)** 📌  
   - Requiere cumplir con **1FN**.
   - Todos los atributos deben depender **completamente** de la clave primaria.
   - **Ejemplo Incorrecto:**
     | id_pedido | id_cliente | nombre_cliente |
     |-----------|-----------|----------------|
     | 101       | 1         | Juan           |
   - **Corrección en 2FN:** Se separa la información de los clientes en otra tabla.
     | id_cliente | nombre_cliente |
     |------------|---------------|
     | 1         | Juan           |

3. **Tercera Forma Normal (3FN)** 📌  
   - Requiere cumplir con **2FN**.
   - No debe haber **dependencias transitivas** (datos que dependen de otros datos y no solo de la clave primaria).
   - **Ejemplo Incorrecto:**
     | id_pedido | id_cliente | ciudad_cliente |
     |-----------|-----------|----------------|
     | 101       | 1         | Bogotá        |
   - **Corrección en 3FN:** Crear una tabla separada de ciudades.
     | id_ciudad | nombre_ciudad |
     |-----------|--------------|
     | 1         | Bogotá       |

---

4️⃣ **¿Qué es la dependencia funcional y cómo afecta el diseño de una base de datos?**  
La **dependencia funcional** ocurre cuando un atributo depende de otro para determinar su valor. Si una tabla tiene dependencias funcionales incorrectas, puede generar redundancia y afectar la integridad.

Ejemplo:
- **Dependencia incorrecta:** En una tabla de pedidos, almacenar el **nombre del cliente** en lugar de solo el **id_cliente**.
- **Solución:** Separar en una tabla de clientes.

---

5️⃣ **¿Cuáles son los principales problemas de no aplicar normalización en una base de datos?**  
❌ **Redundancia de datos**, ocupando espacio innecesario.  
❌ **Inconsistencias en los datos**, generando errores al actualizar información.  
❌ **Dificultad para escalar** y mantener la base de datos en el tiempo.  
❌ **Consultas más lentas** debido a la presencia de datos duplicados.

---

6️⃣ **¿Qué es la desnormalización y en qué casos es útil?**  
La **desnormalización** es el proceso inverso a la normalización, donde se permiten algunas redundancias para mejorar el rendimiento de las consultas.

Ejemplo:
- En un sistema de reportes, en lugar de hacer múltiples uniones (JOINs), se almacena la información repetida en una tabla de reportes para obtener resultados rápidos.

---

7️⃣ **¿Cuáles son las ventajas y desventajas de una base de datos altamente normalizada?**  
✅ **Ventajas:**  
- Menos redundancia y datos consistentes.
- Más eficiencia en almacenamiento.
- Mejor integridad referencial.

❌ **Desventajas:**  
- Consultas más complejas con muchas uniones (JOINs).
- Puede ralentizar el rendimiento en sistemas de lectura intensiva.

---

8️⃣ **¿Cómo influye la redundancia de datos en el rendimiento de la base de datos?**  
- **Aumenta el tamaño de almacenamiento** y los costos.
- **Ralentiza las consultas** debido a la necesidad de eliminar duplicados.
- **Genera inconsistencias** si los datos no se actualizan correctamente.

---

9️⃣ **¿Qué es una clave candidata y cómo se diferencia de una clave primaria?**  
Una **clave candidata** es cualquier atributo que podría ser una clave primaria porque es único.
- **Ejemplo:** En una tabla de empleados, "número de empleado" y "DNI" pueden ser claves candidatas.
- **Clave primaria:** Se elige una de las claves candidatas para identificar la tabla.

---

0️⃣ **¿Cuándo es recomendable dividir una tabla en varias tablas relacionadas?**  
- Cuando una tabla tiene **mucha redundancia**.
- Cuando hay **datos que no dependen directamente de la clave primaria**.
- Cuando se requiere mejorar la **integridad de los datos**.

Ejemplo: Un hospital que almacena "Pacientes" y "Consultas" en una sola tabla. Separa las consultas en otra tabla relacionada para evitar redundancia.

---

# 🏆 Sección 4: Diseño de Bases de Datos NoSQL

1️⃣ **¿Qué es una base de datos NoSQL y en qué se diferencia de SQL?**
Las bases de datos **NoSQL** (“Not Only SQL”) son bases de datos que no utilizan un esquema tabular tradicional como las bases de datos relacionales.
- **Diferencias clave:**
  - No requieren esquemas fijos.
  - Pueden escalar horizontalmente (SQL suele escalar verticalmente).
  - Diseñadas para grandes volúmenes de datos y rapidez en lectura/escritura.
  
Ejemplo: **MongoDB** almacena datos en documentos JSON en lugar de tablas.

---

2️⃣ **¿Cuáles son los principales tipos de bases de datos NoSQL y sus características?**
Existen cuatro tipos principales de bases de datos NoSQL:
- **Key-Value (Clave-Valor)**: Almacenan pares clave-valor. Ejemplo: **Redis, DynamoDB**.
- **Documentales**: Guardan datos en documentos JSON o BSON. Ejemplo: **MongoDB, CouchDB**.
- **Columnar**: Almacenan datos en columnas en lugar de filas. Ejemplo: **Cassandra, Bigtable**.
- **Grafos**: Diseñadas para representar relaciones entre datos. Ejemplo: **Neo4j, ArangoDB**.

---

3️⃣ **¿Cuándo se debe optar por un modelo NoSQL en lugar de un modelo relacional?**
- Cuando los datos son **no estructurados o semi-estructurados**.
- Cuando se requiere **alta escalabilidad y disponibilidad**.
- Cuando el **rendimiento de lectura/escritura** es una prioridad.
- Cuando se trabaja con **grandes volúmenes de datos (Big Data)**.
- Cuando las relaciones entre datos **no son complejas**.

Ejemplo: Un sitio web de redes sociales con **usuarios, publicaciones y comentarios**, donde los datos pueden crecer exponencialmente.

---

4️⃣ **¿Cómo se modelan datos en bases de datos documentales como MongoDB?**
- Se almacenan datos en **documentos JSON/BSON** en lugar de tablas y filas.
- Un documento puede contener datos anidados.
- Se pueden evitar JOINs anidando datos dentro del mismo documento.

Ejemplo en **MongoDB**:
```json
{
  "nombre": "Tienda ABC",
  "productos": [
    { "nombre": "Laptop", "precio": 1200 },
    { "nombre": "Mouse", "precio": 25 }
  ]
}
```

---

5️⃣ **¿Qué es un Diagrama de Interrelación de Documentos (DID) y cómo se usa?**
Es una metodología para modelar bases de datos documentales.
- Ayuda a visualizar relaciones entre documentos.
- Define si los datos deben **embebirse o referenciarse**.

Ejemplo de relaciones:
- **Embebido**: Un cliente tiene sus direcciones dentro del mismo documento.
- **Referenciado**: Un pedido referencia a un cliente mediante un ID.

---

6️⃣ **¿Cómo se representa la relación entre documentos en una base de datos NoSQL?**
- **Embebido**: Cuando los datos relacionados se almacenan dentro del mismo documento.
- **Referenciado**: Cuando los documentos tienen identificadores que los relacionan.

Ejemplo en **MongoDB**:
**Embebido:**
```json
{
  "cliente": "Juan",
  "direccion": { "calle": "Av. Principal", "ciudad": "Bogotá" }
}
```
**Referenciado:**
```json
{
  "cliente_id": 1,
  "direccion_id": 101
}
```

---

7️⃣ **¿Qué ventajas tiene almacenar datos embebidos en un documento en lugar de referenciarlos?**
✅ Mejora la velocidad de consulta.
✅ Reduce la necesidad de hacer JOINs o varias consultas.
✅ Ideal cuando los datos están altamente relacionados y no cambian frecuentemente.

**Cuándo NO embebir:** Si los datos cambian frecuentemente o si hay demasiadas repeticiones de datos en varios documentos.

---

8️⃣ **¿Cómo afecta el modelado en NoSQL a la escalabilidad de la base de datos?**
- **NoSQL escala horizontalmente** agregando más servidores en lugar de mejorar uno solo.
- **Evita bloqueos de concurrencia** en escrituras intensivas.
- **Reduce costos** al poder usar servidores más baratos en la nube.

Ejemplo: Un ecommerce con millones de productos puede distribuir los datos entre múltiples servidores.

---

9️⃣ **¿Qué es un índice en bases de datos NoSQL y cómo mejora la eficiencia?**
Un índice permite acceder rápidamente a documentos sin recorrer toda la base de datos.

Ejemplo en **MongoDB**:
```json
{
  "nombre": 1,  // Crea un índice en el campo "nombre"
  "ciudad": 1   // Crea un índice en "ciudad"
}
```

Ventajas:
✅ **Consultas más rápidas**.
✅ **Menos carga en el servidor**.

---

0️⃣ **¿Cómo se maneja la consistencia de datos en bases de datos NoSQL sin afectar el rendimiento?**
- **Consistencia eventual**: Permite que los datos se sincronicen con el tiempo.
- **Modelo CAP (Consistencia, Disponibilidad, Tolerancia a Particiones)** ayuda a balancear necesidades del negocio.
- **Uso de transacciones** en bases como MongoDB para garantizar consistencia cuando es necesario.

Ejemplo: En un sistema de pagos, la consistencia debe ser fuerte; en una red social, la consistencia eventual es aceptable.

---

# 🏆 Sección 5: Errores Comunes en Diseño de Bases de Datos

1️⃣ **¿Cuà0les son los errores más comunes en el modelado de bases de datos y cómo evitarlos?**
Algunos errores frecuentes incluyen:
- **No normalizar los datos**, lo que genera redundancia.
- **Elegir tipos de datos incorrectos**, afectando el rendimiento.
- **No definir claves primarias y foráneas**, afectando la integridad de los datos.
- **Falta de índices**, provocando consultas lentas.
- **Diseño poco escalable**, que impide el crecimiento de la base de datos.

**Solución:** Aplicar buenas prácticas de normalización, diseño escalable y optimización de consultas.

---

2️⃣ **¿Por qué es importante evitar la redundancia de datos en bases de datos?**
- **Ocupa espacio innecesario** en el almacenamiento.
- **Dificulta la actualización de datos**, aumentando inconsistencias.
- **Ralentiza las consultas**, ya que hay que procesar datos duplicados.

Ejemplo: Si en una tabla de pedidos almacenamos repetidamente el nombre del cliente en lugar de referenciarlo con un **id_cliente**, aumentamos la redundancia.

**Solución:** Aplicar normalización para reducir redundancias innecesarias.

---

3️⃣ **¿Cómo afecta la falta de normalización al rendimiento y la integridad de datos?**
- **Baja el rendimiento** porque las consultas deben procesar más datos de los necesarios.
- **Provoca inconsistencias**, ya que los datos duplicados pueden actualizarse de manera incorrecta.
- **Dificulta el mantenimiento** a largo plazo.

Ejemplo: En una tienda online, almacenar los productos vendidos en cada orden sin una relación con una tabla de productos puede generar valores inconsistentes.

**Solución:** Seguir las reglas de **1FN, 2FN y 3FN** para optimizar la estructura de la base de datos.

---

4️⃣ **¿Qué problemas pueden surgir al elegir un tipo de dato incorrecto para un campo?**
- **Desperdicio de espacio** (Ejemplo: usar un VARCHAR(255) para almacenar un código de 5 caracteres).
- **Problemas de precisión** (Ejemplo: usar FLOAT en lugar de DECIMAL para valores monetarios).
- **Errores en comparaciones y búsquedas** (Ejemplo: almacenar fechas como texto en lugar de usar DATE).

**Solución:** Elegir tipos de datos adecuados según el contexto y necesidades de la aplicación.

---

5️⃣ **¿Qué pasa si no se definen correctamente las claves primarias y foráneas?**
- **Dificultad para identificar registros únicos**.
- **Problemas de integridad referencial** (Ejemplo: pedidos sin clientes válidos).
- **Inconsistencias en la información** cuando un dato se elimina sin afectar registros dependientes.

Ejemplo: Un sistema de biblioteca sin una clave primaria en la tabla de libros podría permitir registros duplicados.

**Solución:** Definir correctamente claves primarias y foráneas desde el diseño inicial.

---

6️⃣ **¿Cuáles son las implicaciones de no establecer restricciones de integridad en la base de datos?**
- **Se pueden insertar datos incorrectos o duplicados**.
- **Relaciones inconsistentes** entre tablas.
- **Mayor riesgo de errores humanos y fallos en la aplicación**.

Ejemplo: Permitir valores nulos en un campo obligatorio como "email" en una tabla de clientes puede generar registros incompletos.

**Solución:** Aplicar restricciones como `NOT NULL`, `UNIQUE`, `CHECK` y `FOREIGN KEY`.

---

7️⃣ **¿Cómo evitar problemas de escalabilidad en bases de datos desde la fase de diseño?**
- **Usar particionamiento y replicación** para distribuir la carga.
- **Diseñar con la posibilidad de escalar horizontalmente** (sharding en NoSQL, replicas en SQL).
- **Evitar diseños monolíticos** y en su lugar dividir la base de datos en módulos.

Ejemplo: Un ecommerce diseñado para pocos productos puede fallar si se expande sin un esquema escalable.

**Solución:** Pensar en la escalabilidad desde el inicio del diseño.

---

8️⃣ **¿Por qué es importante considerar los patrones de acceso a datos al diseñar una base de datos?**
- **Optimiza el rendimiento** al reducir consultas innecesarias.
- **Permite diseñar índices eficientes** para mejorar la búsqueda de datos.
- **Facilita la creación de cachés** para acelerar respuestas.

Ejemplo: Si una aplicación consulta frecuentemente el historial de compras de un cliente, puede ser más eficiente almacenar un resumen en lugar de calcularlo cada vez.

**Solución:** Analizar los patrones de acceso antes de definir el diseño.

---

9️⃣ **¿Qué impacto tiene un mal diseño de base de datos en la seguridad de los datos?**
- **Riesgo de SQL Injection** si los datos no están correctamente validados.
- **Fuga de información sensible** por falta de encriptación.
- **Usuarios con privilegios innecesarios** pueden modificar datos críticos.

Ejemplo: No separar información confidencial en tablas protegidas puede permitir accesos no autorizados.

**Solución:** Implementar buenas prácticas de seguridad en diseño y acceso.

---

0️⃣ **¿Cómo afecta el crecimiento de datos a un modelo de base de datos mal diseñado?**
- **Consultas más lentas y menor rendimiento**.
- **Aumento descontrolado del almacenamiento**.
- **Problemas de escalabilidad al no estar diseñada para grandes volúmenes de datos**.

Ejemplo: Si una empresa de envíos almacena cada transacción sin optimizar el almacenamiento, la base de datos crecerá innecesariamente.

**Solución:** Diseñar considerando crecimiento futuro y posibles optimizaciones.








