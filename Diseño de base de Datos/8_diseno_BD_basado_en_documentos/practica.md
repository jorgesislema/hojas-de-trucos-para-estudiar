# 📌 Prácticas para Modelado de Datos en NoSQL

## 📌 Introducción
Estas prácticas están diseñadas para ayudarte a entender y aplicar el **modelado de datos en bases de datos NoSQL**, con un enfoque en bases **documentales como MongoDB**. Trabajaremos en diferentes escenarios y estructuras para que puedas desarrollar habilidades prácticas en **modelado, consultas y optimización de bases de datos NoSQL**.

---

## 🏆 **Ejercicio 1: Creación de un Modelo Documental para una Plataforma de Cursos Online**

### 🔹 **Objetivo:**
Diseñar una base de datos en **MongoDB** para gestionar cursos, instructores y estudiantes.

### 🔹 **Requerimientos:**
1. Cada curso tiene **un instructor** y varios **estudiantes inscritos**.
2. Los cursos contienen **módulos** y cada módulo tiene **lecciones**.
3. Un estudiante puede estar inscrito en múltiples cursos.

### 🔹 **Modelo Propuesto (Embebido y Referenciado)**

#### 📌 **Colección Cursos**
```json
{
    "_id": "CURSO1001",
    "nombre": "MongoDB para Principiantes",
    "instructor": {
        "id_instructor": "INST500",
        "nombre": "Carlos López"
    },
    "modulos": [
        {"nombre": "Introducción a NoSQL", "lecciones": ["Historia", "Ventajas"]},
        {"nombre": "Consultas Básicas", "lecciones": ["find", "update", "delete"]}
    ]
}
```

#### 📌 **Colección Estudiantes** (Referencia a Cursos)
```json
{
    "_id": "EST1001",
    "nombre": "Ana García",
    "cursos_inscritos": ["CURSO1001", "CURSO2002"]
}
```

### 🔹 **Consultas en MongoDB**
1️⃣ **Buscar todos los cursos de un estudiante:**
```js
db.estudiantes.find({ "_id": "EST1001" })
```

2️⃣ **Listar módulos de un curso específico:**
```js
db.cursos.find({ "_id": "CURSO1001" }, { "modulos": 1 })
```

✅ **Ejercicio:**
- Agrega **más cursos** y **estudiantes**.
- Implementa **una consulta** para contar cuántos estudiantes están inscritos en cada curso.

---

## 🏆 **Ejercicio 2: Modelado de un Sistema de Reservas para un Hotel**

### 🔹 **Objetivo:**
Diseñar una base NoSQL para gestionar **habitaciones, clientes y reservas** en un hotel.

### 🔹 **Requerimientos:**
1. Un cliente puede hacer **varias reservas**.
2. Cada reserva incluye **una o más habitaciones** y tiene una **fecha de entrada y salida**.
3. Las habitaciones tienen **diferentes tipos** (simple, doble, suite).

### 🔹 **Modelo Propuesto (DID - Relación entre Documentos)**

#### 📌 **Colección Habitaciones**
```json
{
    "_id": "HAB101",
    "tipo": "Doble",
    "precio": 80.0,
    "disponibilidad": true
}
```

#### 📌 **Colección Reservas** (Referencia a Cliente y Habitaciones Embebidas)
```json
{
    "_id": "RES2024",
    "cliente": {
        "id_cliente": "CLI500",
        "nombre": "Sofía Méndez"
    },
    "habitaciones": ["HAB101", "HAB202"],
    "fecha_entrada": "2024-03-10",
    "fecha_salida": "2024-03-15"
}
```

### 🔹 **Consultas en MongoDB**
1️⃣ **Buscar todas las reservas de un cliente:**
```js
db.reservas.find({ "cliente.id_cliente": "CLI500" })
```

2️⃣ **Actualizar la disponibilidad de una habitación tras una reserva:**
```js
db.habitaciones.updateOne(
    { "_id": "HAB101" },
    { "$set": { "disponibilidad": false } }
)
```

✅ **Ejercicio:**
- Agrega **nuevas reservas y clientes**.
- Implementa **una consulta para obtener habitaciones disponibles**.

---

## 📌 Conclusión
✅ **Estos ejercicios te ayudarán a entender cómo modelar datos en NoSQL** y mejorar tu capacidad para diseñar bases documentales eficientes.  
✅ **Practica y experimenta con consultas para afianzar el conocimiento.**  
✅ **Piensa en la estructura de tus datos antes de implementarlos para optimizar el rendimiento.**  

🚀 **¡Ahora es tu turno de modelar en NoSQL!**

