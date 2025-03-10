# 📌 Ejemplo: Modelado de Base de Datos para una Red Social

## 📌 Introducción
Diseñar la base de datos de una **red social** implica estructurar las relaciones entre usuarios, publicaciones, comentarios, interacciones y otros elementos clave. En este documento, abordaremos:

✅ **Análisis de requerimientos**.  
✅ **Identificación de entidades y relaciones**.  
✅ **Normalización de la base de datos**.  
✅ **Modelo Entidad-Relación (ERD) y diagramas**.  
✅ **Estrategias de indexación y particionamiento**.  
✅ **Casos de uso y optimizaciones**.  

---

## 📍 1. Análisis de Requerimientos
Antes de modelar la base de datos, definimos los elementos clave de la red social:

✅ **Usuarios**: Registro de perfiles, biografía, imágenes.  
✅ **Publicaciones**: Texto, imágenes, videos, fecha de publicación.  
✅ **Comentarios**: Mensajes en publicaciones de otros usuarios.  
✅ **Amistades / Seguimientos**: Relación entre usuarios.  
✅ **Reacciones**: Likes, shares, emojis en publicaciones.  
✅ **Mensajes**: Chats privados entre usuarios.  

### 🔹 Preguntas Claves para Modelado
❓ ¿Los usuarios pueden seguir a otros sin aprobación? → Seguimiento unidireccional.  
❓ ¿Las publicaciones pueden contener múltiples imágenes? → Relación 1-N.  
❓ ¿Las reacciones pueden incluir varios tipos? → Tabla independiente.  

---

## 📍 2. Identificación de Entidades y Relaciones

| **Entidad**        | **Descripción** |
|--------------------|----------------|
| **Usuario**        | Información del usuario (ID, nombre, email, foto, etc.). |
| **Publicación**    | Post realizado por un usuario (texto, imagen, fecha). |
| **Comentario**     | Comentario realizado en una publicación. |
| **Reacción**       | Like, corazón, etc. en publicaciones o comentarios. |
| **Amistad/Follow** | Relación entre usuarios (amistad o seguimiento). |
| **Mensaje**        | Conversaciones privadas entre usuarios. |

🔹 **Relaciones clave:**
- Un usuario puede hacer muchas publicaciones. (1-N)
- Un usuario puede reaccionar a muchas publicaciones. (N-N)
- Un usuario puede seguir a otros usuarios. (N-N)
- Una publicación puede tener muchos comentarios. (1-N)

---

## 📍 3. Modelo Entidad-Relación (ERD)
```sql
CREATE TABLE usuario (
    id SERIAL PRIMARY KEY,
    nombre VARCHAR(255) NOT NULL,
    email VARCHAR(255) UNIQUE NOT NULL,
    password_hash VARCHAR(255) NOT NULL,
    foto_perfil TEXT,
    fecha_registro TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE publicacion (
    id SERIAL PRIMARY KEY,
    usuario_id INT REFERENCES usuario(id) ON DELETE CASCADE,
    contenido TEXT NOT NULL,
    fecha_publicacion TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE comentario (
    id SERIAL PRIMARY KEY,
    publicacion_id INT REFERENCES publicacion(id) ON DELETE CASCADE,
    usuario_id INT REFERENCES usuario(id) ON DELETE CASCADE,
    contenido TEXT NOT NULL,
    fecha_comentario TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE reaccion (
    id SERIAL PRIMARY KEY,
    usuario_id INT REFERENCES usuario(id) ON DELETE CASCADE,
    publicacion_id INT REFERENCES publicacion(id) ON DELETE CASCADE,
    tipo VARCHAR(50) CHECK (tipo IN ('like', 'love', 'haha', 'wow', 'sad', 'angry')),
    fecha_reaccion TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE amistad (
    usuario1_id INT REFERENCES usuario(id) ON DELETE CASCADE,
    usuario2_id INT REFERENCES usuario(id) ON DELETE CASCADE,
    fecha_amistad TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    PRIMARY KEY (usuario1_id, usuario2_id)
);

CREATE TABLE mensaje (
    id SERIAL PRIMARY KEY,
    usuario_emisor INT REFERENCES usuario(id) ON DELETE CASCADE,
    usuario_receptor INT REFERENCES usuario(id) ON DELETE CASCADE,
    contenido TEXT NOT NULL,
    fecha_envio TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);
```

---

## 📍 4. Normalización y Optimización
**✔ Normalización:** Se han eliminado datos redundantes.  
**✔ Índices:** Agregar índices a `email`, `fecha_publicacion` y `tipo` en `reaccion`.  
**✔ Particionamiento:** `publicacion` y `mensaje` pueden particionarse por fecha para mejorar rendimiento.  

🔹 **Índices recomendados:**
```sql
CREATE INDEX idx_usuario_email ON usuario(email);
CREATE INDEX idx_fecha_publicacion ON publicacion(fecha_publicacion);
CREATE INDEX idx_tipo_reaccion ON reaccion(tipo);
```

---

## 📍 5. Casos de Uso y Optimización

✅ **Consulta de publicaciones de un usuario con reacciones y comentarios:**
```sql
SELECT p.id, p.contenido, p.fecha_publicacion, 
       COUNT(DISTINCT c.id) AS total_comentarios, 
       COUNT(DISTINCT r.id) AS total_reacciones
FROM publicacion p
LEFT JOIN comentario c ON p.id = c.publicacion_id
LEFT JOIN reaccion r ON p.id = r.publicacion_id
WHERE p.usuario_id = 1
GROUP BY p.id;
```

✅ **Listar amigos de un usuario:**
```sql
SELECT u.id, u.nombre, u.foto_perfil
FROM amistad a
JOIN usuario u ON (a.usuario1_id = u.id OR a.usuario2_id = u.id)
WHERE (a.usuario1_id = 1 OR a.usuario2_id = 1) AND u.id <> 1;
```

✅ **Mensajes recientes entre dos usuarios:**
```sql
SELECT * FROM mensaje 
WHERE (usuario_emisor = 1 AND usuario_receptor = 2) 
   OR (usuario_emisor = 2 AND usuario_receptor = 1) 
ORDER BY fecha_envio DESC LIMIT 20;
```

---

## 📌 Conclusión
📌 **El modelo relacional de la red social está optimizado para escalabilidad y eficiencia.**  
📌 **El uso de índices y particionamiento mejora las consultas en bases de datos grandes.**  
📌 **Los casos de uso reflejan necesidades reales de una red social moderna.**  

