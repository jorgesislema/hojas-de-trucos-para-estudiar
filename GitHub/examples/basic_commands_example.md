# 🚀 **Ejemplo de Comandos en Git**

Este archivo presenta ejemplos prácticos de los comandos más comunes de Git, mostrando un flujo de trabajo típico para gestionar un proyecto. Sirve como referencia rápida o punto de partida para tus propias guías. ¡Vamos a dominar Git juntos!

---

## 📑 **Tabla de Contenidos**

1. [📂 Crear o Clonar un Repositorio](#-crear-o-clonar-un-repositorio)
2. [📋 Verificar Estado y Agregar Cambios](#-verificar-estado-y-agregar-cambios)
3. [💾 Confirmar Cambios (Commits)](#-confirmar-cambios-commits)
4. [🔀 Ramas y Fusiones](#-ramas-y-fusiones)
5. [🌐 Sincronizar con Repositorio Remoto](#-sincronizar-con-repositorio-remoto)
6. [👀 Ver Historial](#-ver-historial)

---

## 📂 **Crear o Clonar un Repositorio**

### **Iniciar un Repositorio**
```bash
# Crea un repositorio en la carpeta actual
cd nombre-del-proyecto
git init
```

### **Clonar un Repositorio Existente**
```bash
git clone https://github.com/usuario/repositorio.git
```
> **Consejo:** Tras clonar el repositorio, encontrarás una carpeta con el mismo nombre del proyecto.

---

## 📋 **Verificar Estado y Agregar Cambios**

### **Verificar Estado**
```bash
git status
```
Muestra los archivos modificados o eliminados y si están listos para un commit.

### **Agregar Cambios**
```bash
# Agregar un archivo específico
git add archivo.txt

# Agregar todos los archivos modificados
git add .
```
> **Sugerencia:** Ejecutar `git add .` con cuidado, ya que incluirá todos los archivos cambiados.

---

## 💾 **Confirmar Cambios (Commits)**
```bash
git commit -m "Mensaje descriptivo del cambio"
```
Un buen mensaje de commit explica **qué** cambió y **por qué**.

> **Ejemplo:**
> ```bash
> git commit -m "Corrige bug de validación en formulario de registro"
> ```

---

## 🔀 **Ramas y Fusiones**

### **Crear y Cambiar a una Nueva Rama**
```bash
git checkout -b nombre-rama
```

### **Cambiar a una Rama Existente**
```bash
git checkout rama-existente
```

### **Fusionar (Merge)**
```bash
# Fusionar "rama-a-fusionar" en la rama actual
git merge rama-a-fusionar
```
> **Consejo:** Trabaja en ramas separadas para cada funcionalidad; así evitas confusiones y facilitas la revisión de código.

---

## 🌐 **Sincronizar con Repositorio Remoto**

### **Subir Cambios**
```bash
git push origin main
```
En algunos proyectos, la rama principal se llama `master` en lugar de `main`.

### **Descargar Cambios**
```bash
git pull origin main
```
Combina los cambios remotos con tu rama local.

> **Precaución:** Si existen conflictos, Git te notificará y deberás resolverlos manualmente.

---

## 👀 **Ver Historial**
```bash
git log
```
Muestra commits, autores y fechas. Para una vista más compacta:
```bash
git log --oneline --graph
```

---

Este flujo básico de Git incluye: **crear o clonar un repositorio**, **realizar y confirmar cambios**, **trabajar con ramas** y **sincronizar con un remoto**. Adapta y amplía estos comandos según tus necesidades y practica para dominarlos.

**¡Feliz versionado!**

