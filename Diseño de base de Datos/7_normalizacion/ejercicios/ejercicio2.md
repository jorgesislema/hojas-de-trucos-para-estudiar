# 📌 Normalización de Datos para Restaurantes

Este documento detalla el proceso de normalización de una base de datos con información sobre **restaurantes**, **ubicaciones** y **servicios** en distintos condados y ciudades. Se aplicarán las formas normales **1NF, 2NF y 3NF** para eliminar redundancias y asegurar la integridad de los datos.

---

## 📌 1️⃣ Datos Iniciales (No Normalizados)

Los datos actuales incluyen información repetitiva sobre restaurantes, condados y ciudades. Algunos problemas detectados:

- **Redundancia de datos**: Información de ciudades y condados se repite en múltiples filas.
- **Dependencias transitivas**: Algunas columnas dependen de atributos no clave primaria.
- **Valores no atómicos**: Algunos campos contienen múltiples valores, como códigos postales separados por comas.

Ejemplo de datos sin normalizar:

| id_servicio | nombre_restaurante          | dirección                    | id_condado | condado    | codigos_postales_condado    | lat_condado | lon_condado | id_ciudad | ciudad    | codigo_postal_ciudad | lat_ciudad  | lon_ciudad  | estado   | año  |
|------------|----------------------------|------------------------------|------------|------------|----------------------------|-------------|-------------|------------|------------|----------------------|-------------|-------------|---------|------|
| 05HTY      | Ruby Tuesday                | Kirkman Road, Orlando        | lomP       | Orange     | 32801, 32839, 32789        | 28.4844995  | -81.2518833 | 20si       | Apopka     | 32811                | 28.5033228  | -81.4580286 | Florida | 2023 |
| R252A      | Denny's                     | Kirkman Road, Orlando        | lomP       | Orange     | 32801, 32839, 32789        | 28.4844995  | -81.2518833 | 20si       | Apopka     | 32811                | 28.5028071  | -81.4580216 | Florida | 2023 |
| U8STH      | El Puerto Argentinean Grill | North 17th Street, Ybor City | uHNL       | Hillsborough | 33602, 33647, 33511      | 27.9903597  | -82.3017728 | w2w7       | Brandon    | 33605                | 27.958677   | -82.4405852 | Florida | 2023 |


---

## 📌 2️⃣ Primera Forma Normal (1NF)

**Correcciones Aplicadas:**
- Se eliminan **valores multivaluados** en códigos postales, creando una tabla separada para ellos.
- Cada columna contiene **solo un valor atómico**.

**Nuevas Tablas:**

📌 **Restaurantes**
```sql
CREATE TABLE Restaurantes (
    id_restaurante VARCHAR(10) PRIMARY KEY,
    nombre VARCHAR(255) NOT NULL,
    direccion VARCHAR(255) NOT NULL,
    id_ubicacion INT NOT NULL,
    anio INT NOT NULL,
    FOREIGN KEY (id_ubicacion) REFERENCES Ubicaciones(id_ubicacion)
);
```

📌 **Ubicaciones**
```sql
CREATE TABLE Ubicaciones (
    id_ubicacion INT PRIMARY KEY AUTO_INCREMENT,
    id_ciudad VARCHAR(10) NOT NULL,
    id_condado VARCHAR(10) NOT NULL,
    estado VARCHAR(50) NOT NULL,
    FOREIGN KEY (id_ciudad) REFERENCES Ciudades(id_ciudad),
    FOREIGN KEY (id_condado) REFERENCES Condados(id_condado)
);
```

📌 **Códigos Postales**
```sql
CREATE TABLE Codigos_Postales (
    id_codigo_postal INT PRIMARY KEY AUTO_INCREMENT,
    codigo_postal VARCHAR(10) NOT NULL,
    id_ubicacion INT NOT NULL,
    FOREIGN KEY (id_ubicacion) REFERENCES Ubicaciones(id_ubicacion)
);
```


---

## 📌 3️⃣ Segunda Forma Normal (2NF)

**Correcciones Aplicadas:**
- Separamos los datos de **ubicaciones**, evitando que dependan de atributos no clave primaria.
- Creación de la tabla **Condados** y **Ciudades**.

📌 **Condados**
```sql
CREATE TABLE Condados (
    id_condado VARCHAR(10) PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL,
    latitud DECIMAL(10,7),
    longitud DECIMAL(10,7),
    estado VARCHAR(50) NOT NULL
);
```

📌 **Ciudades**
```sql
CREATE TABLE Ciudades (
    id_ciudad VARCHAR(10) PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL,
    latitud DECIMAL(10,7),
    longitud DECIMAL(10,7),
    estado VARCHAR(50) NOT NULL
);
```

---

## 📌 4️⃣ Tercera Forma Normal (3NF)

**Correcciones Aplicadas:**
- Eliminamos **dependencias transitivas**, moviendo información a tablas separadas.
- Creamos la tabla de **Categorías** y una relación N:M con los restaurantes.

📌 **Categorías**
```sql
CREATE TABLE Categorias (
    id_categoria INT PRIMARY KEY AUTO_INCREMENT,
    nombre_categoria VARCHAR(100) NOT NULL
);
```

📌 **Restaurantes_Categorías** (Relación N:M entre Restaurantes y Categorías)
```sql
CREATE TABLE Restaurantes_Categorias (
    id_restaurante VARCHAR(10) NOT NULL,
    id_categoria INT NOT NULL,
    PRIMARY KEY (id_restaurante, id_categoria),
    FOREIGN KEY (id_restaurante) REFERENCES Restaurantes(id_restaurante),
    FOREIGN KEY (id_categoria) REFERENCES Categorias(id_categoria)
);
```

---

## 📌 5️⃣ Modelo Relacional Final

Después de la normalización, el modelo relacional se organiza de la siguiente manera:

```sql
Restaurantes (id_restaurante PK, nombre, direccion, id_ubicacion FK, anio)
Ubicaciones (id_ubicacion PK, id_ciudad FK, id_condado FK, estado)
Ciudades (id_ciudad PK, nombre, latitud, longitud, estado)
Condados (id_condado PK, nombre, latitud, longitud, estado)
Codigos_Postales (id_codigo_postal PK, codigo_postal, id_ubicacion FK)
Categorias (id_categoria PK, nombre_categoria)
Restaurantes_Categorias (id_restaurante FK, id_categoria FK)
```

---

## 📌 6️⃣ Conclusión

🎯 **Antes:** La base de datos tenía datos repetitivos y difícilmente modificables.  
✅ **Después:** Se eliminaron redundancias, optimizando la estructura con relaciones bien definidas.  



