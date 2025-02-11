# 📝 **Hoja de referencia de Markdown**

Esta hoja de referencia proporciona una guía completa de la sintaxis esencial y avanzada de Markdown. Ya seas principiante o un usuario experimentado, aquí encontrarás todo lo necesario para formatear tus documentos de manera efectiva.

---

## 📑 **Tabla de contenidos**

1. [🔖 Encabezados](#-encabezados)
2. [📝 Formato de texto](#-formato-de-texto)
3. [📋 Listas](#-listas)
4. [🔗 Enlaces](#-enlaces)
5. [🖼️ Imágenes](#-imágenes)
6. [🛠️ Bloques de código](#-bloques-de-código)
7. [📊 Tablas](#-tablas)
8. [📝 Citas](#-citas)
9. [🎨 Emojis e iconos](#-emojis-e-iconos)
10. [📚 Características adicionales](#-características-adicionales)

---

## 🔖 **Encabezados**

Usa `#` para los encabezados. Aumenta la cantidad de `#` para crear subencabezados.

```markdown
# Encabezado 1
## Encabezado 2
### Encabezado 3
```

### **Ejemplo renderizado:**

# Encabezado 1  
## Encabezado 2  
### Encabezado 3

---

## 📝 **Formato de texto**

Da formato al texto usando asteriscos (`*`) o guiones bajos (`_`).

```markdown
**Texto en negrita**
*Texto en cursiva*
***Negrita y cursiva***
~~Tachado~~
```

### **Ejemplo renderizado:**

**Texto en negrita**  
*Texto en cursiva*  
***Negrita y cursiva***  
~~Tachado~~

---

## 📋 **Listas**

### **Listas desordenadas**

```markdown
- Ítem 1
- Ítem 2
  - Subítem
```

### **Listas ordenadas**

```markdown
1. Primer ítem
2. Segundo ítem
   1. Subítem
```

### **Ejemplo renderizado:**

- Ítem 1  
- Ítem 2  
  - Subítem  

1. Primer ítem  
2. Segundo ítem  
   1. Subítem

---

## 🔗 **Enlaces**

Crea enlaces con la siguiente sintaxis:

```markdown
[Texto del enlace](https://example.com)
```

También puedes definir enlaces de referencia:

```markdown
Este es un [enlace de referencia][1].

[1]: https://example.com
```

### **Ejemplo renderizado:**

[Texto del enlace](https://example.com)  
Este es un [enlace de referencia][1].

[1]: https://example.com

---

## 🖼️ **Imágenes**

Inserta imágenes con la siguiente sintaxis:

```markdown
![Texto alternativo](https://example.com/image.png)
```

### **Ejemplo renderizado:**

![Markdown Logo](https://markdown-here.com/img/icon256.png)

---

## 🛠️ **Bloques de código**

### **Código en línea**

Usa comillas invertidas para el código en línea:

```markdown
El comando `docker run` inicia un contenedor.
```

### **Bloques de código**

Usa tres comillas invertidas para bloques de código multilínea. Especifica el lenguaje para resaltar la sintaxis.

```markdown
```python
# Ejemplo en Python
print("Hola, mundo!")
```
```

### **Ejemplo renderizado:**

```python
# Ejemplo en Python
print("Hola, mundo!")
```

---

## 📊 **Tablas**

Crea tablas usando barras verticales (`|`) y guiones (`-`).

```markdown
| Característica    | Descripción              |
|----------------|--------------------------|
| Configuración fácil | Pasos de instalación rápidos |
| Multiplataforma | Compatible con todos los sistemas operativos principales |
```

### **Ejemplo renderizado:**

| Característica    | Descripción              |
|----------------|--------------------------|
| Configuración fácil | Pasos de instalación rápidos |
| Multiplataforma | Compatible con todos los sistemas operativos principales |

---

## 📝 **Citas**

Usa `>` para crear citas en bloque.

```markdown
> Esta es una cita en bloque.
```

Las citas también se pueden anidar:

```markdown
> Nivel 1
>> Nivel 2
```

### **Ejemplo renderizado:**

> Esta es una cita en bloque.  
> Nivel 1  
>> Nivel 2

---

## 🎨 **Emojis e iconos**

Utiliza emojis o iconos Unicode para darle personalidad a tu documento.

```markdown
## 🚀 Características
- 🌟 Fácil de usar
- 🔒 Seguro
```

### **Ejemplo renderizado:**

## 🚀 Características  
- 🌟 Fácil de usar  
- 🔒 Seguro

> **Consejo:** Encuentra iconos y emojis en [Emojipedia](https://emojipedia.org/).

---

## 📚 **Características adicionales**

### **Líneas horizontales**

Utiliza tres guiones o asteriscos:

```markdown
---
```

### **Notas al pie**

```markdown
Este texto tiene una nota al pie[^1].

[^1]: Esta es la explicación de la nota al pie.
```

### **Ejemplo renderizado:**

Este texto tiene una nota al pie[^1].

[^1]: Esta es la explicación de la nota al pie.

> **Nota:** Las notas al pie pueden no ser compatibles en todas las plataformas.

---

Al dominar estos elementos de Markdown, podrás crear documentos estructurados y visualmente atractivos para cualquier plataforma. ¡Feliz formateo!

> **Nota:** Este archivo está optimizado para ver en GitHub con formato Markdown. Siéntete libre de copiarlo y usarlo como referencia en tus proyectos.

