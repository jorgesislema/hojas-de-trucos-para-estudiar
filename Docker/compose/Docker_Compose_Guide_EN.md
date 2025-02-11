# 🛠️ **Docker Compose Guide**

Docker Compose is a tool that allows you to define and manage multi-container applications using a YAML configuration file. It simplifies the setup, deployment, and management of complex applications across different environments such as development, testing, and production.

---

## 📑 **Table of Contents**

1. [❓ What is Docker Compose?](#-what-is-docker-compose)
2. [📥 Installation](#-installation)
3. [📄 Basic Syntax of the `docker-compose.yml` File](#-basic-syntax-of-the-docker-composeyml-file)
4. [🔧 Common Docker Compose Commands](#-common-docker-compose-commands)
5. [📝 Practical Example](#-practical-example)
6. [💡 Recommendations and Best Practices](#-recommendations-and-best-practices)
7. [📚 Resources and References](#-resources-and-references)

---

## ❓ **What is Docker Compose?**

Docker Compose allows you to define an application composed of multiple services (containers) by specifying the necessary configurations such as networks, volumes, and environment variables in a single YAML file. With a single command, you can start or stop the entire application.

---

## 📥 **Installation**

To install Docker Compose on Debian/Ubuntu-based systems:

```bash
sudo apt install docker-compose
```

Verify the installation with:

```bash
docker-compose version
```

---

## 📄 **Basic Syntax of the `docker-compose.yml` File**

The `docker-compose.yml` file defines the structure of the services in an application. Here is a basic example:

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

## 🔧 **Common Docker Compose Commands**

| Command                          | Description                                |
|----------------------------------|--------------------------------------------|
| `docker-compose up`              | Starts all services defined in `docker-compose.yml`. |
| `docker-compose down`            | Stops and removes services, networks, and volumes. |
| `docker-compose logs`            | Displays the logs of services.              |
| `docker-compose exec <service> <command>` | Executes a command inside a service.       |
| `docker-compose build`           | Builds or rebuilds service images.          |

---

## 📝 **Practical Example**

If you have a web application with a Node.js backend and a PostgreSQL database, your `docker-compose.yml` file might look like this:

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

To start the application, run:

```bash
docker-compose up
```

---

## 💡 **Recommendations and Best Practices**

1. **Optimize image size:** Use small base images like `alpine`.
2. **Use volumes:** Store persistent data outside containers to prevent data loss.
3. **Limit resources:** Define CPU and memory usage limits with `deploy.resources.limits`.
4. **Separate configurations:** Create multiple YAML files for different environments (development, testing, production).
5. **Document your configuration:** Add explanatory comments in the YAML file.

---

## 📚 **Resources and References**

- [Official Docker Compose Documentation](https://docs.docker.com/compose/)
- [Docker Hub](https://hub.docker.com/)
- [Best Practices for Docker Development](https://docs.docker.com/develop/dev-best-practices/)

---

Congratulations! You now have a complete guide on Docker Compose. Use this reference to efficiently manage your applications.

**Docker is power, and now that power is in your hands.**

---



