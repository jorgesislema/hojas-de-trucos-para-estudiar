# 🛠️ **Guía Docker Compose**

Docker Compose es una herramienta que permite definir y gestionar aplicaciones multi-contenedor mediante un archivo de configuración YAML. Simplifica la configuración, despliegue y administración de aplicaciones complejas en distintos entornos como desarrollo, pruebas y producción.

---

## 📑 **Índice**

1. [❓ ¿Qué es Docker Compose?](#-qué-es-docker-compose)
2. [📥 Instalación](#-instalación)
3. [🔢 Sintaxis básica del archivo `docker-compose.yml`](#-sintaxis-básica-del-archivo-docker-composeyml)
4. [🔧 Comandos comunes de Docker Compose](#-comandos-comunes-de-docker-compose)
5. [🖋️ Ejemplo práctico](#-ejemplo-práctico)
6. [💡 Recomendaciones y Mejores Prácticas](#-recomendaciones-y-mejores-prácticas)
7. [📚 Recursos y Referencias](#-recursos-y-referencias)

---

## 💡 **¿Qué es Docker Compose?**

Docker Compose permite definir una aplicación compuesta por múltiples servicios (contenedores), especificando las configuraciones necesarias como redes, volúmenes y variables de entorno en un único archivo YAML. Con solo un comando puedes iniciar o detener toda la aplicación.

---

## 📥 **Instalación**

Para instalar Docker Compose en sistemas basados en Debian/Ubuntu:

```bash
sudo apt install docker-compose
```

Verifica la instalación con:

```bash
docker-compose version
```

---

## 🔢 **Sintaxis básica del archivo `docker-compose.yml`**

El archivo `docker-compose.yml` define la estructura de los servicios de una aplicación. Aquí tienes un ejemplo básico:

```yaml
version: '3.9'
services:
  web:
    image: nginx:latest
    ports:
      - "8080:80"
    volumes:
      - ./html:/usr/share/nginx/html
    networks:
      - webnet

  db:
    image: mysql:5.7
    environment:
      MYSQL_ROOT_PASSWORD: example
      MYSQL_DATABASE: app_db
    volumes:
      - db_data:/var/lib/mysql
    networks:
      - webnet

volumes:
  db_data:

networks:
  webnet:
```

---

## 🔧 **Comandos comunes de Docker Compose**

| Comando                          | Descripción                                |
|----------------------------------|--------------------------------------------|
| `docker-compose up`              | Inicia todos los servicios definidos en `docker-compose.yml`. |
| `docker-compose down`            | Detiene y elimina los servicios, redes y volúmenes. |
| `docker-compose logs`            | Muestra los registros de los servicios.     |
| `docker-compose exec <servicio> <comando>` | Ejecuta un comando dentro de un servicio. |
| `docker-compose build`           | Construye o reconstruye las imágenes de los servicios. |

---

## 🖋️ **Ejemplo práctico**

Si tienes una aplicación web con un backend en Node.js y una base de datos PostgreSQL, tu archivo `docker-compose.yml` podría ser:

```yaml
version: '3.9'
services:
  app:
    build: ./app
    ports:
      - "3000:3000"
    environment:
      DATABASE_URL: postgres://user:password@db:5432/app_db
    depends_on:
      - db

  db:
    image: postgres:13
    environment:
      POSTGRES_USER: user
      POSTGRES_PASSWORD: password
      POSTGRES_DB: app_db
```

Para iniciar la aplicación, ejecuta:

```bash
docker-compose up
```

---

## 💡 **Recomendaciones y Mejores Prácticas**

1. **Optimiza el tamaño de las imágenes:** Usa imágenes base pequeñas como `alpine`.
2. **Usa volúmenes:** Almacena datos persistentes fuera de los contenedores para evitar pérdidas de datos.
3. **Limita los recursos:** Define límites de uso de CPU y memoria con `deploy.resources.limits`.
4. **Separa configuraciones:** Crea múltiples archivos YAML para distintos entornos (desarrollo, pruebas, producción).
5. **Documenta tu configuración:** Añade comentarios explicativos en el archivo YAML.

---

## 📚 **Recursos y Referencias**

- [Documentación oficial de Docker Compose](https://docs.docker.com/compose/)
- [Docker Hub](https://hub.docker.com/)
- [Guía de mejores prácticas para Docker](https://docs.docker.com/develop/dev-best-practices/)

---

¡Felicidades! Ahora tienes una guía completa sobre Docker Compose. Utiliza esta referencia para gestionar tus aplicaciones de manera eficiente.

**Docker es poder, y ahora ese poder está en tus manos.**

---



