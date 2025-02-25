# Diccionario de Datos

Un **Diccionario de Datos** es un recurso fundamental dentro de la gestión de metadatos. Este documento o sistema recoge y describe todos los elementos de datos relevantes para una organización o proyecto, con el fin de centralizar y estandarizar su definición, sus propiedades y su uso.

---

## 1. ¿Qué es y para qué sirve?

**Definición**: El diccionario de datos es un repositorio (puede ser un archivo, una base de datos o una herramienta especializada) que contiene información sobre cada campo, tabla o variable en los sistemas de información de la organización. Además, puede incluir referencias a reglas de negocio, formatos de campo y relaciones entre entidades.

- **Objetivo principal**: Asegurar que todos los equipos usen y entiendan los datos de la misma forma, reduciendo confusiones y redundancias.
- **Beneficios**:
  1. **Estandarización**: Unifica la terminología usada en distintos sistemas.
  2. **Transparencia**: Facilita que cualquier usuario (técnico o de negocio) localice y entienda los datos.
  3. **Mantenimiento**: Ayuda a documentar los cambios de estructura de datos y sus impactos.

---

## 2. Elementos Clave de un Diccionario de Datos

1. **Nombre de Campo / Atributo**
   - Identificador único (p. ej., `ID_Cliente` o `Fecha_Compra`).
2. **Descripción / Definición**
   - Explicación clara de qué representa ese campo (p. ej., “Número de identificación único del cliente”).
3. **Tipo de Dato**
   - Indica cómo se almacenan los valores (texto, entero, fecha, booleano, etc.).
4. **Longitud / Formato**
   - En campos de texto, la longitud máxima; en fechas, el formato esperado (`DD/MM/AAAA`).
5. **Valores Permisibles** (opcional)
   - Lista de valores que puede tomar el atributo (p. ej., “Estados: ACTIVO/INACTIVO/ELIMINADO”).
6. **Reglas de Negocio** (opcional)
   - Restricciones lógicas o validaciones (p. ej., “El valor `Fecha_Compra` debe ser anterior o igual a la fecha actual”).
7. **Responsable (Owner / Steward)**
   - La persona o equipo que define, modifica y valida el significado de ese dato.
8. **Fuente / Origen**
   - Indica si el campo se obtiene de un formulario web, un sistema transaccional, una hoja de cálculo, etc.
9. **Frecuencia de Actualización** (opcional)
   - Para saber cada cuánto se refresca la información (p. ej., “Diario”, “Tiempo Real”, “Mensual”).
10. **Ejemplos de Valores** (opcional)
   - Muestra datos reales o simulados para clarificar el contenido.

---

## 3. Tipos de Diccionario de Datos

1. **Físico**
   - Describe cómo están creadas las tablas y columnas en las bases de datos físicas (campos, índices, tipos).
2. **Lógico**
   - Define conceptos a nivel de negocio sin entrar en detalles técnicos de implementación.
3. **De Aplicación**
   - Enfocado en una aplicación o servicio específico.
4. **Corporativo / Empresarial**
   - Reúne definiciones de toda la organización, fomentando la coherencia entre áreas.

---

## 4. Ejemplo de Formato para un Diccionario de Datos

| Campo           | Descripción                                     | Tipo de Dato   | Longitud | Valores Válidos       | Responsable  | Ejemplo          |
|-----------------|-------------------------------------------------|----------------|----------|-----------------------|-------------|------------------|
| **ID_Cliente**  | Identificador único del cliente en el sistema   | Entero (int)   | 10       | N/A                   | Data Owner  | 100234           |
| **Nombre**      | Nombre completo del cliente                     | Texto          | 100      | [A-Za-z, espacios]    | Data Steward| Juan Pérez       |
| **Fecha_Compra**| Fecha en que el cliente realizó la compra       | Fecha          | N/A      | Formato: DD/MM/AAAA   | Data Steward| 25/03/2025       |
| **Estado**      | Estado actual del cliente en el CRM             | Texto          | 10       | [ACTIVO, INACTIVO]    | Data Steward| ACTIVO           |

---

## 5. Pasos para Crear un Diccionario de Datos

1. **Identificar el Alcance**
   - ¿Se cubrirá una aplicación específica o toda la empresa?
2. **Recopilar la Información**
   - Hablar con Data Stewards, revisar documentación y bases de datos, etc.
3. **Definir Plantilla Estándar**
   - Determinar los campos obligatorios (nombre, descripción, tipo de dato) y opcionales.
4. **Validar con Equipos de Negocio y TI**
   - Asegurarse de que la definición es coherente y útil.
5. **Publicar y Versionar**
   - Subirlo a un repositorio central (puede ser una wiki, herramienta de gobierno, etc.).
6. **Mantener Actualizado**
   - Cuando cambien definiciones o surjan nuevas tablas, reflejarlo en el diccionario.

---

## 6. Herramientas y Formatos

- **Hojas de Cálculo (Excel, Google Sheets)**: Sencillo para equipos pequeños, pero cuidado con los errores manuales.
- **Bases de Datos**: Construir tablas específicas para alojar el diccionario y enlazarlo con otras fuentes de metadatos.
- **Herramientas Especializadas**: Soluciones como Collibra, IBM InfoSphere o Informatica, que ofrecen repositorios y flujos de trabajo para aprobar cambios.
- **Repositorios en Git**: Almacenar la documentación en Markdown, aprovechando control de versiones y la colaboración.

---

## 7. Mejores Prácticas

1. **Mantenerlo Sencillo**: Incluye solo lo necesario (ej. nombre, descripción, tipo, responsable), ampliando campos a medida que surja la necesidad.
2. **Centralizar el Acceso**: Publicarlo en un lugar donde todos los involucrados puedan consultarlo.
3. **Asignar Responsables**: Cada atributo debe tener un ‘dueño’ (Data Owner / Steward) encargado de su evolución.
4. **Capacitar al Personal**: Enseñar a los equipos la importancia de un diccionario de datos y cómo usarlo.
5. **Versionar los Cambios**: Documentar qué se cambió, cuándo y por qué, para mantener la trazabilidad.

---

## 8. Conclusión

Un **diccionario de datos** bien estructurado es una poderosa herramienta para alinear equipos y asegurar que todos entiendan los datos de la misma manera. Contribuye a la calidad, la trazabilidad y la eficiencia en la organización, y actúa como cimiento de cualquier iniciativa de **gobernanza del dato**.

