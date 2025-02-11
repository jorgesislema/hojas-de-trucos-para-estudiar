# 🏁 **Git Básico y Flujo de Trabajo**

Este documento presenta una guía práctica de los fundamentos de Git, que incluye la configuración inicial, los comandos básicos y un flujo de trabajo recomendado para que gestiones tus proyectos de forma efectiva. ¡Vamos a dominar Git juntos!

---

## 📌 **¿Qué es Git?**

**Git** es un sistema de control de versiones distribuido que te permite coordinar el trabajo de uno o varios colaboradores en el desarrollo de un proyecto. Con Git:

- Llevarás un historial detallado de cambios.
- Podrás revertir errores con facilidad.
- Trabajarás en múltiples funcionalidades a través de ramas.

### **Ventajas Clave**
- **Descentralización:** Cada copia del repositorio contiene todo el historial.
- **Velocidad:** Las operaciones locales (commits, branching, merges) son muy rápidas.
- **Colaboración:** Facilita el trabajo en equipo con revisiones de código y solución de conflictos.

---

## 🛠️ **Instalación y Configuración Inicial**

### **Instalación**
- **Windows:** Descarga [Git for Windows](https://git-scm.com/download/win) y sigue las instrucciones.
- **Linux (Debian/Ubuntu):**
  ```bash
  sudo apt update
  sudo apt install git
  git --version
  ```
- **macOS:** Con [Homebrew](https://brew.sh):
  ```bash
  brew install git
  git --version
  ```

### **Configuración Inicial**

Configura tu nombre y correo electrónico para que Git identifique tus commits:
```bash
git config --global user.name "Tu Nombre"
git config --global user.email "tu.email@example.com"
git config --list
```
> **Consejo:** Respalda tu archivo `~/.gitconfig` si trabajas en varias máquinas.

---

## 🚀 **Comandos Básicos**

### **1. Iniciar o Clonar un Repositorio**
```bash
# Inicializar repositorio en una carpeta
git init

# Clonar un repositorio existente
git clone https://github.com/user/repo.git
```

### **2. Verificar Estado de Cambios**
```bash
git status
```
Muestra los archivos modificados, eliminados o agregados y si están listos para confirmar (commit).

### **3. Agregar Cambios (Staging)**
```bash
# Agregar un archivo
git add archivo.txt

# Agregar todos los archivos modificados
git add .
```

### **4. Guardar Cambios (Commit)**
```bash
git commit -m "Descripción clara del cambio"
```
Mantén tus mensajes de commit cortos y precisos.

### **5. Historial de Commits**
```bash
git log
```
Muestra los commits, autores y fechas. Para un historial más compacto:
```bash
git log --oneline --graph
```

### **6. Sincronizar con Remoto**
```bash
# Subir cambios
git push origin main

# Descargar cambios
git pull origin main
```

### **7. Ramas y Fusiones**
```bash
# Crear y cambiar a una nueva rama
git checkout -b nueva_rama

# Cambiar a una rama existente
git checkout rama_existente

# Fusionar la rama especificada en la rama actual
git merge rama_fuente
```

---

## 🔄 **Flujo de Trabajo Recomendado**
1. **Crea o Clona** un repositorio.
2. **Crea una rama** nueva para cada funcionalidad o tarea.
3. **Agrega y confirma** los cambios con frecuencia (`git add`, `git commit`).
4. **Fusiona** tu rama con la rama principal (mediante `git merge` o un Pull Request).
5. **Sincroniza** con el remoto (`git pull` antes y `git push` después).

> **Sugerencia:** Evita combinar varias funcionalidades en un solo commit. Mantén commits pequeños y temáticos.

---

## ⚠️ **Errores y Trucos Comunes**
- **Detached HEAD:** Sucede al hacer checkout a un commit en lugar de una rama. Usa `git checkout -b <rama>`.
- **Mensajes de Commit:** Describe el "qué" y el "porqué" del cambio.
- **Rebase Interactivo:** Usa `git rebase -i` para mantener un historial limpio.
- **Resolver Conflictos:** Cuando ocurre un conflicto, edita los archivos afectados y realiza un commit.
- **Aliases en `.gitconfig`:** Acelera comandos, por ejemplo `st = status`, `co = checkout`.

---

## 📚 **Recursos Adicionales**
- [Documentación Oficial de Git](https://git-scm.com/doc)
- [Pro Git (Libro Gratuito)](https://git-scm.com/book/es/v2)
- [Atlassian Git Cheatsheet](https://www.atlassian.com/git/tutorials/atlassian-git-cheatsheet)

---

¡Felicidades! Con estos fundamentos de Git podrás gestionar tus proyectos con mayor eficiencia y seguridad. Explora otras secciones en `docs/` para aprender sobre estrategias de branching, colaboración en equipo y soluciones a problemas frecuentes. Si tienes más consejos o quieres contribuir, ¡no dudes en participar!

