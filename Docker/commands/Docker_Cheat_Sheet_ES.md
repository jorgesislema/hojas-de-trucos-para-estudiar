# 🚀 **Docker: Comandos y Recomendaciones**

Esta es una guía completa para trabajar con Docker, incluyendo comandos esenciales, opciones avanzadas y recomendaciones para mejorar tu flujo de trabajo. Este documento está diseñado para ser una referencia rápida y práctica, tanto para principiantes como para usuarios avanzados.

---

## 🐳 **¿Qué es Docker?**

Docker es una plataforma que permite crear, desplegar y ejecutar aplicaciones dentro de contenedores. Un contenedor es una instancia ligera y aislada que incluye todo lo necesario para que una aplicación se ejecute de manera consistente en cualquier entorno.

**Beneficios clave de Docker:**

- Portabilidad: Ejecuta aplicaciones en cualquier sistema operativo que soporte Docker.
- Escalabilidad: Despliega múltiples instancias de tu aplicación fácilmente.
- Gestión simplificada: Automatiza despliegues con herramientas como Docker Compose.

---

## 📑 **Índice**

1. [🔍 Información y Ayuda sobre Docker](#-información-y-ayuda-sobre-docker)
2. [🖼️ Gestión de Imágenes](#️-gestión-de-imágenes)
3. [📦 Gestión de Contenedores](#-gestión-de-contenedores)
4. [🔧 Trabajando con Contenedores](#-trabajando-con-contenedores)
5. [📋 Visualización de Logs](#-visualización-de-logs)
6. [⚙️ Gestión General de Docker](#-gestión-general-de-docker)
7. [💡 Recomendaciones Adicionales](#-recomendaciones-adicionales)
8. [🛠️ Guía Docker Compose](#️-guía-docker-compose)

---

## 🔍 **Información y Ayuda sobre Docker**

- `docker version`: Muestra la versión del cliente y servidor de Docker.
- `docker info`: Muestra información detallada sobre el sistema Docker.
- `docker help`: Muestra ayuda sobre los comandos de Docker.

> **💡 Recomendación:** Utiliza `docker help <comando>` para obtener detalles específicos de cualquier comando.

---

## 🖼️ **Gestión de Imágenes**

- `docker search <imagen>`: Busca imágenes en Docker Hub.
- `docker images`: Lista las imágenes almacenadas localmente.
- `docker pull <imagen>`: Descarga una imagen desde un registro.
- `docker rmi <imagen>`: Elimina una imagen del almacenamiento local.
- `docker build -t <imagen> <ruta>`: Construye una imagen desde un Dockerfile.
- `docker push <imagen>`: Sube una imagen a un registro.
- `docker login`: Autentica en un registro de contenedores.
- `docker logout`: Cierra sesión de un registro de contenedores.
- `docker history <imagen>`: Muestra el historial de capas de una imagen.

> **🔧 Consejo:** Mantén tus imágenes organizadas con etiquetas (`tags`) para facilitar el seguimiento de versiones.

---

## 📦 **Gestión de Contenedores**

- `docker ps`: Lista los contenedores en ejecución.
- `docker ps -a`: Lista todos los contenedores, incluidos los detenidos.
- `docker ps -f <filtro>`: Filtra la lista de contenedores.
- `docker ps -s`: Muestra el tamaño de los contenedores.
- `docker run <imagen>`: Ejecuta un contenedor desde una imagen.
- `docker run -it <imagen>`: Ejecuta un contenedor con acceso interactivo.
- `docker run -d <imagen>`: Ejecuta un contenedor en modo desatendido.
- `docker start <id_contenedor>`: Inicia un contenedor detenido.
- `docker stop <id_contenedor>`: Detiene un contenedor de manera controlada.
- `docker restart <id_contenedor>`: Reinicia un contenedor.
- `docker rm <id_contenedor>`: Elimina un contenedor.
- `docker exec -it <id_contenedor> <shell>`: Ejecuta un comando dentro de un contenedor en ejecución.
- `docker kill <id_contenedor>`: Detiene un contenedor de forma forzada.
- `docker create <imagen>`: Crea un contenedor sin ejecutarlo.
- `docker pause <id_contenedor>`: Pausa los procesos dentro de un contenedor.

> **💡 Recomendación:** Utiliza volúmenes (`docker volume`) para mantener datos persistentes entre reinicios de contenedores.

---

## 🔧 **Trabajando con Contenedores**

- `docker attach <id_contenedor>`: Conecta la salida de un contenedor en ejecución.
- `docker commit <id_contenedor> <imagen>`: Crea una nueva imagen desde un contenedor.
- `docker diff <id_contenedor>`: Muestra los cambios en el sistema de archivos de un contenedor.
- `docker events`: Muestra eventos de Docker en tiempo real.
- `docker load <archivo>`: Carga una imagen desde un archivo tar.
- `docker tag <imagen> <etiqueta>`: Crea una etiqueta para una imagen.
- `docker top <id_contenedor>`: Muestra los procesos en ejecución dentro de un contenedor.
- `docker wait <id_contenedor>`: Bloquea hasta que un contenedor se detenga y muestra el código de salida.

> **🔍 Consejo:** Utiliza `docker logs` para depurar aplicaciones dentro de los contenedores.

---

## 📋 **Visualización de Logs**

- `docker logs <id_contenedor>`: Muestra los logs de un contenedor.
- `docker logs --details <id_contenedor>`: Muestra información detallada de los logs.
- `docker logs -f <id_contenedor>`: Muestra logs en tiempo real.
- `docker logs --until <hora> <id_contenedor>`: Muestra los logs hasta un momento específico.
- `docker logs --tail <n> <id_contenedor>`: Muestra las últimas `n` líneas de los logs.

> **📢 Recomendación:** Configura el almacenamiento de logs para evitar que se acumulen en exceso y consuman espacio en disco.

---

## ⚙️ **Gestión General de Docker**

- `docker manifest`: Gestiona los manifiestos de imágenes Docker.
- `docker network`: Gestiona las redes de Docker.
- `docker plugin`: Gestiona plugins de Docker.
- `docker volume`: Gestiona los volúmenes de almacenamiento.
- `docker system`: Gestiona datos y recursos del sistema Docker.
- `docker trust`: Gestiona la confianza de contenido para imágenes.
- `docker context`: Gestiona los contextos de Docker.
- `docker builder`: Gestiona el proceso de construcción.
- `docker container`: Gestiona contenedores.

> **🛑 Consejo:** Utiliza `docker system prune` para limpiar recursos no utilizados y liberar espacio.

---

## 🛠️ **Guía Docker Compose**

Docker Compose es una herramienta que permite definir y administrar aplicaciones multi-contenedor utilizando un archivo YAML. Esto simplifica la configuración y despliegue de entornos complejos.

### 📥 **Instalación**
Si no tienes Docker Compose instalado, puedes obtenerlo ejecutando:

```bash
sudo apt install docker-compose
```

### 📄 **Sintaxis básica del archivo `docker-compose.yml`**
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
      MYSQL_ROOT_PASSWORD: ejemplo
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

### 🛠️ **Comandos comunes de Docker Compose**

- `docker-compose up`: Inicia todos los servicios definidos en el archivo.
- `docker-compose down`: Detiene y elimina los contenedores, redes y volúmenes.
- `docker-compose logs`: Muestra los logs de los servicios.
- `docker-compose exec <servicio> <comando>`: Ejecuta un comando en un contenedor en ejecución.
- `docker-compose build`: Construye o reconstruye las imágenes.

> **📋 Recomendación:** Organiza tus servicios en diferentes archivos YAML si trabajas con múltiples entornos (desarrollo, pruebas, producción).

### 📝 **Ejemplo práctico**
Si tienes una aplicación web con un backend Node.js y una base de datos PostgreSQL, tu `docker-compose.yml` podría ser algo como esto:

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

Con esta configuración, puedes iniciar la aplicación ejecutando:

```bash
docker-compose up
```

### Mejores Prácticas

    Minimiza el tamaño de las imágenes: Utilizar imágenes base pequeñas como alpiney eliminaciones.

    Utilizamos volúmenes para persistentes datos: Evita almacenar datos críticas críticas dentro de contenedor.

    Limita los recursos: Usa --memoryY --cpuspara el uso limitado de recursos de los contenedores.

    Mantén las imágenes actualizadas: Actualiza regularmente las imágenes base y las dependencias para evitar vulnerabilidades.

    Utiliza Docker Compose para entornos complejos: Simplificar la gestión de múltiples contenedores y servicios.

### Referencias y Recursos

-    Documentación oficial de Docker

-    Docker Hub

-   Docker Compose Documentación

-   Mejores prácticas para escribir Dockerfiles

Este documento es una guía viva y se actualiza regularmente con nuevas recomendaciones y comandos. Si tienes sugerencias o mejoras, "no dudes en contribuir".
