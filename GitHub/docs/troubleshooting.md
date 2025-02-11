# 🛠️ **Guía de Resolución de Problemas (Troubleshooting) en Git/GitHub**

Este documento aborda los problemas más frecuentes que pueden surgir al trabajar con Git y GitHub, así como posibles soluciones y buenas prácticas para evitarlos. Sigue estos consejos para mantener tu proyecto funcionando sin contratiempos. ¡Resolvamos los problemas como profesionales!

---

## 📑 **Tabla de Contenidos**

1. [❌ Errores Comunes en Git](#-errores-comunes-en-git)
2. [🔒 Problemas de Autenticación y Permisos](#-problemas-de-autenticación-y-permisos)
3. [🔀 Conflictos al Fusionar (Merge Conflicts)](#-conflictos-al-fusionar-merge-conflicts)
4. [🚫 Rechazo de Cambios (Rejected Push)](#-rechazo-de-cambios-rejected-push)
5. [🐛 Problemas con Hooks o CI/CD](#-problemas-con-hooks-o-cicd)
6. [❓ Preguntas Frecuentes](#-preguntas-frecuentes)
7. [📚 Recursos Adicionales](#-recursos-adicionales)

---

## ❌ **Errores Comunes en Git**

### **1. Estado HEAD separado (Detached HEAD)**
- **Síntoma**: Aparece el mensaje `detached HEAD state`.
- **Causa**: Se hizo checkout a un commit o etiqueta en lugar de una rama.
- **Solución**:
  ```bash
  git checkout -b nueva_rama  # Crea y cambia a "nueva_rama"
  ```
  De esta manera, trabajarás en una rama en lugar de un commit aislado.

### **2. Cambios Ignorados por `.gitignore`**
- **Síntoma**: No se registran cambios en archivos que esperas versionar.
- **Causa**: El archivo o la carpeta está listada en `.gitignore`.
- **Solución**: Elimina la regla correspondiente de `.gitignore` y confirma los cambios. Para forzar el seguimiento de un archivo en particular:
  ```bash
  git add -f archivo_ignorado
  ```

### **3. Historial Desordenado**
- **Síntoma**: Excesivos merges sin sentido o commits duplicados.
- **Causa**: Ramas mal sincronizadas o uso excesivo de merges.
- **Solución**: Usa `git pull --rebase` o mantén una [estrategia de ramificación](branching_strategies.md) clara.

---

## 🔒 **Problemas de Autenticación y Permisos**

### **1. Credenciales Incorrectas**
- **Síntoma**: Se solicita usuario y contraseña repetidamente, o se rechaza la conexión.
- **Causa**: Token o contraseña expirado, o configuración errónea.
- **Solución**: Regenera tu token de acceso personal (PAT) y revisa tu archivo `~/.gitconfig`.

### **2. Permisos Insuficientes**
- **Síntoma**: No puedes hacer push/merge en un repositorio de tu organización o equipo.
- **Causa**: Tu usuario no cuenta con permisos de escritura o admin.
- **Solución**: Solicita al administrador que te agregue como colaborador, o haz un **fork** y envía un Pull Request.

---

## 🔀 **Conflictos al Fusionar (Merge Conflicts)**

1. **Alerta de conflicto**: Git indica que ciertas secciones de un archivo difieren entre tu rama y la rama de destino.
2. **Resolución manual**: Edita los archivos con conflicto, conserva o combina las partes necesarias y elimina las marcas (`>>>>`, `====`, `<<<<`).
3. **Confirmación**: Haz commit para indicar que el conflicto fue resuelto.

> **Consejo**: Mantén tus ramas sincronizadas (por ejemplo, `git pull --rebase`) para reducir la probabilidad de conflictos.

---

## 🚫 **Rechazo de Cambios (Rejected Push)**

1. **Síntoma**: Aparece `! [rejected]  main -> main (non-fast-forward)`.
2. **Causa**: La rama remota tiene commits que no están en tu rama local.
3. **Solución**:
   - **Opción A**: `git pull --rebase origin main` y luego `git push origin main`.
   - **Opción B**: Si deseas mantener tu historial local intacto, sincroniza primero con `git fetch && git merge`.

> **Advertencia**: Evita usar `git push --force` a menos que sepas exactamente lo que haces, ya que reescribe el historial y puede afectar el trabajo de otros colaboradores.

---

## 🐛 **Problemas con Hooks o CI/CD**

1. **Hook no se ejecuta**: Asegúrate de que el archivo tenga permisos de ejecución (`chmod +x hook_name`) y esté en `.git/hooks/` con el nombre correcto (por ejemplo, `pre-commit`, `commit-msg`).
2. **Fallo en la pipeline de CI**: Lee los registros detallados en GitHub Actions, Jenkins u otra plataforma para detectar fallos en tests, linters o dependencias.
3. **Timeout en un paso**: El build o test puede atascarse. Revisa la configuración del pipeline y optimiza o elimina pasos innecesarios.

---

## ❓ **Preguntas Frecuentes**

1. **¿Cómo recuperar un commit eliminado?**
   - Usa `git reflog` para encontrar la referencia del commit, luego `git checkout <ref>`.
2. **¿Por qué mi cambio no aparece en GitHub?**
   - Asegúrate de haber hecho `git push origin <rama>` y que la URL remota sea correcta.
3. **¿Es seguro usar `git push --force`?**
   - Hazlo con precaución, pues reescribe el historial y puede afectar el trabajo de otros.

---

## 📚 **Recursos Adicionales**

- [Git Troubleshooting Docs](https://git-scm.com/docs/git#_troubleshooting)
- [GitHub Help](https://docs.github.com/es)
- [Stack Overflow](https://stackoverflow.com/questions/tagged/git) (para buscar soluciones a errores específicos)

---

Con un flujo de trabajo organizado y buena comunicación, la mayoría de los inconvenientes se solucionan rápidamente. Sigue aprendiendo y colaborando con confianza para mantener tu proyecto libre de problemas. ¡Éxitos en tu desarrollo!

