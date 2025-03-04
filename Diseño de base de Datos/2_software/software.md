# Sección 2: Software que Usaremos en el Curso

## 📌 Introducción

En esta sección, exploraremos el software que utilizaremos a lo largo del curso para diseñar, modelar y gestionar bases de datos. El uso de herramientas especializadas nos permitirá estructurar mejor los datos, visualizar nuestras bases antes de implementarlas y manejarlas de forma eficiente en entornos reales.

Existen distintas opciones según el nivel de complejidad y el objetivo del usuario: desde software para modelado de bases de datos hasta sistemas de gestión de bases de datos (DBMS) como MySQL, PostgreSQL o MongoDB. Además, actualmente existen herramientas con **inteligencia artificial (IA)** que facilitan la generación de esquemas y optimización de consultas.

---

## 📌 Lista de Aplicaciones y Websites Disponibles

### **Herramientas para modelado de bases de datos (Gráficos y Diagramas)**
Estas herramientas permiten diseñar el esquema antes de implementarlo en un DBMS:

| Software             | Facilidad de Uso | Costo | Utilidades |
|----------------------|-----------------|-------|------------|
| **Draw.io**         | Alta            | Gratis | Diagramas E-R en línea |
| **Lucidchart**      | Media           | Gratis (limitado) / Pago | Diagramas colaborativos en línea |
| **DB Designer**     | Alta            | Gratis | Modelado E-R digital |
| **SQLDBM**         | Media           | Gratis (limitado) / Pago | Modelado E-R en línea con SQL |
| **Diagrams.net**    | Alta            | Gratis | Alternativa a Lucidchart |
| **ChatGPT (IA)**   | Alta            | Gratis/Pago | Generación automática de esquemas y optimización de consultas |
| **AI Schema Designer** | Media        | Pago | Generación de modelos de base de datos con IA |

### **Software para bases de datos (DBMS - Locales y en la nube)**

| Software             | Facilidad de Uso | Costo | Utilidades |
|----------------------|-----------------|-------|------------|
| **MySQL Workbench** | Media           | Gratis | Diseño y administración de MySQL |
| **DBeaver**         | Media           | Gratis | Compatible con varios motores SQL |
| **pgAdmin**         | Media           | Gratis | Administración de PostgreSQL |
| **SQLite DB Browser** | Alta           | Gratis | Ideal para bases de datos locales pequeñas |
| **Oracle SQL Developer** | Baja       | Gratis | Administración de bases de datos Oracle |
| **MongoDB Compass** | Media           | Gratis | Herramienta gráfica para MongoDB |
| **AI SQL Query Generator** | Alta    | Pago | Generación de consultas SQL con IA |

### **Sitios Web para practicar SQL y modelado de bases de datos**

- **Replit SQL** → Permite ejecutar SQL en línea sin instalar nada.
- **W3Schools SQL** → Curso interactivo con práctica en línea.
- **SQLFiddle** → Permite probar consultas SQL en distintos motores.
- **dbdiagram.io** → Creación de diagramas de bases de datos online.
- **ChatGPT (IA para SQL)** → Ayuda a generar y optimizar consultas SQL con IA.
- **DataGrip con IA** → Sugiere mejoras en queries y modelos de datos.

---

## 📌 Pasos Generales para Diseñar una Base de Datos

### 1️⃣ **Levantamiento de Requerimientos**

Este es el primer paso en el diseño de una base de datos y **consiste en recopilar la información esencial sobre qué datos se manejarán y cómo se utilizarán**.

### **📌 ¿Qué datos debemos pedir al cliente?**

Para cualquier persona que quiera trabajar por su cuenta, este proceso puede ser complicado, por lo que es importante saber **qué preguntar**. A continuación, presentamos algunas preguntas clave para recopilar los requisitos de la base de datos:

#### **1. Sobre la empresa o negocio:**
- ¿A qué se dedica la empresa?
- ¿Qué tipo de información maneja diariamente?
- ¿Cuáles son los procesos que necesitan ser automatizados o mejorados?

#### **2. Sobre los datos a almacenar:**
- ¿Qué información de clientes se necesita guardar? (Nombre, dirección, teléfono, email, etc.)
- ¿Existen productos o servicios que se deben registrar? ¿Cuáles son sus atributos?
- ¿Hay un historial de transacciones o ventas?

#### **3. Sobre los accesos y seguridad:**
- ¿Quién podrá acceder a la base de datos?
- ¿Es necesario definir diferentes niveles de permisos?

#### **4. Sobre la escalabilidad y crecimiento:**
- ¿Se espera que la cantidad de datos crezca en el futuro?
- ¿Es necesario integrar esta base de datos con otros sistemas?

### **📌 Ejemplo práctico: Creación de una base de datos para un restaurante**

#### **Caso 1: Sin hacer levantamiento de requerimientos**
El dueño de un restaurante pide una base de datos para manejar pedidos. El programador asume que solo necesita almacenar nombres de clientes y platos pedidos. Pero más adelante el restaurante también quiere llevar control de:
- Inventario de ingredientes.
- Horarios de los empleados.
- Reservas de mesas.

📌 **Problema:** La base de datos original no fue diseñada para esto y ahora necesita ser reconstruida.

#### **Caso 2: Con levantamiento de requerimientos bien hecho**
Se entrevista al dueño del restaurante y se identifican todos los datos importantes **antes de crear la base de datos**. Se diseñan tablas para clientes, pedidos, empleados, inventario y reservas, permitiendo que el sistema sea flexible y escalable.

📌 **Conclusión:** Un buen levantamiento de requerimientos evita errores y costosas modificaciones futuras.

### 2️⃣ **Modelado Conceptual** → Crear un **diagrama Entidad-Relación (E-R)**.

### 3️⃣ **Modelado Lógico** → Convertirlo en un esquema relacional.

### 4️⃣ **Modelado Físico** → Implementar la base de datos en un DBMS.

### 5️⃣ **Optimización con IA** → Usar herramientas como ChatGPT para mejorar consultas y esquemas.

📌 **Ejemplo:** Una tienda online sigue estos pasos:
1. Define que necesita manejar clientes, pedidos y productos.
2. Dibuja un **diagrama E-R** en Lucidchart.
3. Convierte las entidades en tablas SQL.
4. Carga los datos en MySQL.
5. Utiliza **ChatGPT para optimizar las consultas SQL** y mejorar la eficiencia.

---

Con esta información, ya tenemos una visión completa del software que usaremos para modelar y gestionar bases de datos, incluyendo herramientas con inteligencia artificial. ¡Sigamos avanzando en el curso! 🚀

