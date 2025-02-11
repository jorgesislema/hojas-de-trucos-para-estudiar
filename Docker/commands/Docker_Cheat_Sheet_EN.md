# 📝 **Docker Commands Cheat Sheet**

Welcome to this Docker commands cheat sheet. Here you will find an organized and easy-to-understand list of the most useful commands to work with Docker. Whether you are a beginner or an expert, this guide will help you manage containers efficiently. Let's get started!

---

## 📑 **Table of Contents**

1. [🐳 Information and Help](#-information-and-help)
2. [🖼️ Image Management](#️-image-management)
3. [📦 Container Management](#-container-management)
4. [🔍 Logs and Debugging](#-logs-and-debugging)
5. [🔗 Networks and Volumes](#-networks-and-volumes)
6. [🛠️ Docker Compose](#️-docker-compose)
7. [⚙️ System Management](#-system-management)
8. [💡 Tips and Best Practices](#-tips-and-best-practices)
9. [📚 Resources and References](#-resources-and-references)

---

## 🐳 **Information and Help**

| Command                   | Description                               |
|---------------------------|-------------------------------------------|
| `docker version`          | Shows the Docker version.                 |
| `docker info`             | Displays detailed information about Docker. |
| `docker help`             | Shows general help about Docker.          |
| `docker help <command>`   | Displays help for a specific command.      |

> **💡 Tip:** Use `docker help <command>` to get detailed information about any command.

---

## 🖼️ **Image Management**

| Command                          | Description                               |
|----------------------------------|-------------------------------------------|
| `docker search <image>`          | Searches for images on Docker Hub.        |
| `docker images`                  | Lists local images.                       |
| `docker pull <image>`            | Downloads an image from Docker Hub.       |
| `docker rmi <image>`             | Removes a local image.                    |
| `docker build -t <image_name> <path>` | Builds an image from a Dockerfile.       |
| `docker push <image>`            | Pushes an image to a registry.            |
| `docker history <image>`         | Displays the image's layer history.        |

> **🔧 Tip:** Use tags to version your images, e.g., `my-image:v1`.

---

## 📦 **Container Management**

| Command                              | Description                                |
|--------------------------------------|--------------------------------------------|
| `docker run <image>`                 | Creates and runs a container.               |
| `docker run -it <image>`             | Runs a container in interactive mode.       |
| `docker run -d <image>`              | Runs a container in detached mode.          |
| `docker ps`                          | Lists running containers.                   |
| `docker ps -a`                       | Lists all containers, including stopped ones. |
| `docker start <container_id>`        | Starts a stopped container.                 |
| `docker stop <container_id>`         | Stops a running container.                  |
| `docker restart <container_id>`      | Restarts a container.                       |
| `docker rm <container_id>`           | Removes a container.                        |
| `docker exec -it <container_id> <command>` | Runs a command inside a running container. |
| `docker commit <container_id> <image_name>` | Creates a new image from a container.     |

> **💡 Tip:** Use `docker run --name <name>` to assign a custom name to your container.

---

## 🔍 **Logs and Debugging**

| Command                           | Description                                |
|-----------------------------------|--------------------------------------------|
| `docker logs <container_id>`      | Displays the logs of a container.           |
| `docker logs -f <container_id>`   | Displays real-time logs.                    |
| `docker logs --tail <n> <container_id>` | Shows the last `n` lines of logs.         |
| `docker inspect <container_id>`   | Shows detailed information about a container. |
| `docker stats`                    | Displays real-time statistics of containers. |

> **📢 Recommendation:** Use `docker logs -f` to debug applications in real-time.

---

## 🔗 **Networks and Volumes**

| Command                            | Description                                |
|------------------------------------|--------------------------------------------|
| `docker network ls`                | Lists available networks.                   |
| `docker network create <network_name>` | Creates a new network.                   |
| `docker network inspect <network_name>` | Displays details of a network.           |
| `docker volume ls`                 | Lists available volumes.                    |
| `docker volume create <volume_name>` | Creates a new volume.                     |
| `docker volume inspect <volume_name>` | Shows details of a volume.                |

> **💡 Tip:** Use volumes to store persistent data outside the container.

---

## 🛠️ **Docker Compose**

| Command                            | Description                                |
|------------------------------------|--------------------------------------------|
| `docker-compose up`                | Starts all services defined in `docker-compose.yml`. |
| `docker-compose down`              | Stops and removes services, networks, and volumes. |
| `docker-compose logs`              | Displays the logs of services.              |
| `docker-compose exec <service> <command>` | Runs a command inside a specific service. |
| `docker-compose build`             | Builds or rebuilds service images.          |

### **Example `docker-compose.yml`:**

```yaml
version: '3.9'
services:
  web:
    image: nginx
    ports:
      - "8080:80"
  db:
    image: mysql
    environment:
      MYSQL_ROOT_PASSWORD: password
```

---

## ⚙️ **System Management**

| Command                            | Description                                |
|------------------------------------|--------------------------------------------|
| `docker system df`                 | Shows Docker disk usage.                    |
| `docker system prune`              | Removes unused resources.                   |
| `docker system prune -a`           | Removes all unused resources, including images. |
| `docker system info`               | Displays detailed Docker system information. |

> **🛑 Warning:** Use `docker system prune` with caution to avoid removing important resources.

---

## 💡 **Tips and Best Practices**

- **Minimize image size:** Use small base images like `alpine`.
- **Use volumes for persistent data:** Avoid losing critical data.
- **Limit resources:** Use `--memory` and `--cpus` to control resource usage.
- **Keep images updated:** Regularly update images to avoid vulnerabilities.
- **Use Docker Compose:** Simplifies the management of multiple containers.

---

## 📚 **Resources and References**

- [Official Docker Documentation](https://docs.docker.com/)
- [Docker Hub](https://hub.docker.com/)
- [Docker Compose Documentation](https://docs.docker.com/compose/)

---

Now you have a complete and easy-to-use Docker commands cheat sheet! Save this guide as a reference and share it with your colleagues. Have fun building and managing containers.

**Docker is power, and now that power is in your hands.**

