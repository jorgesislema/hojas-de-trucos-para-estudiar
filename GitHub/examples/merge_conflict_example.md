# 😅 **Ejemplo de Conflicto de Fusión (Merge Conflict) en Git**

Este documento ilustra un escenario práctico de conflicto de fusión (**merge conflict**) y cómo resolverlo paso a paso. Dominar la resolución de conflictos te permite mantener un historial limpio y una integración fluida de cambios en tu proyecto. ¡Resolvamos conflictos como profesionales!

---

## 📑 **Tabla de Contenidos**

1. [🔍 ¿Qué es un Conflicto de Fusión?](#-qué-es-un-conflicto-de-fusión)
2. [🚀 Preparación del Escenario del Conflicto](#-preparación-del-escenario-del-conflicto)
3. [💥 Ocurre el Conflicto](#-ocurre-el-conflicto)
4. [🔧 Resolución Manual](#-resolución-manual)
5. [🤝 Confirmar y Finalizar](#-confirmar-y-finalizar)
6. [💡 Consejos y Buenas Prácticas](#-consejos-y-buenas-prácticas)

---

## 🔍 **¿Qué es un Conflicto de Fusión?**

Un **conflicto de fusión** ocurre cuando Git no puede combinar automáticamente los cambios de dos ramas, debido a que se han modificado las mismas líneas o se han eliminado/renombrado los mismos archivos de manera incompatible.

> **Ejemplo:** Dos colaboradores editan la misma sección de un archivo, agregando texto diferente. Git no sabe cuál mantener.

---

## 🚀 **Preparación del Escenario del Conflicto**

- **Rama principal (`main`):** Contiene un archivo (por ejemplo, `app.js`) con la funcionalidad base.
- **Rama `feature-a`:** Se añade una nueva función en `app.js`.
- **Rama `feature-b`:** Se modifica la misma sección de `app.js` para añadir otra funcionalidad.

```bash
# En la rama main
echo "console.log('Hola desde main')" > app.js

git add app.js
git commit -m "Base de app.js en main"

# Crear rama feature-a y modificar la misma línea
git checkout -b feature-a
echo "console.log('Cambio en feature A')" >> app.js
git commit -am "Agrega cambio en feature A"

git checkout main
# Crear rama feature-b y modificar la misma línea
git checkout -b feature-b
echo "console.log('Cambio en feature B')" >> app.js
git commit -am "Agrega cambio en feature B"
```

---

## 💥 **Ocurre el Conflicto**

1. **Fusionar `feature-a` en `main`:**
   ```bash
   git checkout main
   git merge feature-a
   ```
   Esto se realiza sin conflictos, ya que es la primera fusión.

2. **Intentar fusionar `feature-b` en `main`:**
   ```bash
   git merge feature-b
   ```
   Aquí Git detecta que la misma sección ha sido modificada en ambas ramas.

---

## 🔧 **Resolución Manual**

Cuando Git no puede fusionar automáticamente, inserta marcadores en el archivo conflictivo:

```diff
<<<<<< HEAD
console.log('Cambio en feature A')
======
console.log('Cambio en feature B')
>>>>>> feature-b
```

1. **Editar el archivo**: Decide si mantienes o combinas partes de cada rama. Por ejemplo:

   ```js
   // Mantener ambos cambios
   console.log('Cambio en feature A');
   console.log('Cambio en feature B');
   ```
2. **Eliminar los marcadores**: (`<<<<<<`, `======`, `>>>>>>`) para dejar el código limpio.
3. **Hacer commit**: Indica que el conflicto fue resuelto:
   ```bash
   git add app.js
   git commit -m "Resuelve conflicto entre feature-a y feature-b"
   ```

---

## 🤝 **Confirmar y Finalizar**

Tras el commit de resolución:

1. **Fusión completada**: El historial refleja la combinación de `feature-b` en `main`.
2. **Opcional**: Si ya no necesitas la rama `feature-b`, elimínala:
   ```bash
   git branch -d feature-b
   git push origin --delete feature-b
   ```

---

## 💡 **Consejos y Buenas Prácticas**

- **Commits pequeños**: Cambios reducidos facilitan la resolución de conflictos.
- **Sincroniza con frecuencia**: Ejecuta `git pull --rebase origin main` para incorporar cambios antes de editar.
- **Discusión en equipo**: Si el conflicto es de objetivo, no solo de código, acláralo antes de fusionar.
- **Revisar el archivo**: Asegúrate de no dejar marcadores de conflicto.

---

Con estos pasos, enfrentarás los conflictos de fusión con más confianza. La comunicación con el equipo y mantener una disciplina de **commits frecuentes** y **fusiones periódicas** ayudarán a evitar divergencias largas. ¡Feliz resolución de conflictos!

