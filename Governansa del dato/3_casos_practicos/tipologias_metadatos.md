# Tipologías de Metadatos

Los **metadatos** pueden clasificarse de distintas formas, dependiendo del contexto de uso y de las necesidades de la organización. A continuación se describen las principales tipologías de metadatos, con ejemplos y recomendaciones para su gestión.

---

## 1. Metadatos Descriptivos

### Definición
Son aquellos que describen las características principales de un recurso o conjunto de datos. Brindan información sobre el **contenido**, como título, autor, fecha de creación, palabras clave, entre otros.

- **Ejemplo**: En un archivo de imagen, los metadatos descriptivos pueden incluir el título de la fotografía, el nombre del fotógrafo y el lugar donde se tomó.

### Utilidad
- Facilitan la búsqueda y la identificación del recurso.
- Permiten la catalogación y el etiquetado de documentos, imágenes o cualquier otro activo.

### Prácticas Recomendadas
- Mantener listas de palabras clave (taxonomías) actualizadas.
- Definir convenciones claras para los campos (por ejemplo, siempre usar `DD/MM/AAAA` para fechas).

---

## 2. Metadatos Estructurales

### Definición
Reflejan la **organización interna** de un recurso, mostrando cómo sus componentes se relacionan entre sí.

- **Ejemplo**: En un documento largo, la división en capítulos, secciones y apartados. En una base de datos, la relación entre distintas tablas.

### Utilidad
- Aseguran la coherencia y el orden de la información.
- Facilitan la vinculación y la navegación interna de los recursos.

### Prácticas Recomendadas
- Emplear diagramas (ER, UML) para describir la estructura de bases de datos.
- Mantener documentación actualizada de índices, claves primarias y foráneas.

---

## 3. Metadatos Administrativos

### Definición
Se enfocan en la **gestión y gobernanza** de la información, contemplando aspectos como permisos de acceso, propiedad, fechas de creación/modificación y políticas de retención.

- **Ejemplo**: Indicar quién es el "Data Owner" de una tabla; especificar la fecha y hora en que se modificó por última vez un documento.

### Utilidad
- Garantizan la seguridad y el control de los datos.
- Facilitan el cumplimiento normativo (ej. RGPD, HIPAA).

### Prácticas Recomendadas
- Asignar roles y responsabilidades claras (Data Owner, Data Steward).
- Definir períodos de retención y estrategias de archivado.

---

## 4. Metadatos de Uso

### Definición
Describen cómo, cuándo y quién utiliza los datos. Incluyen información sobre el **historial de acceso**, el número de descargas, las estadísticas de uso o los reportes de auditoría.

- **Ejemplo**: Un sistema de gestión de documentos puede registrar cuántas veces un archivo ha sido abierto y por quién.

### Utilidad
- Permite entender la relevancia de ciertos datos dentro de la organización.
- Ayuda en la detección de accesos no autorizados o usos indebidos.

### Prácticas Recomendadas
- Activar logs o bitácoras de uso con un nivel de detalle adecuado.
- Integrar sistemas de monitoreo continuo para detectar patrones anómalos.

---

## 5. Metadatos Técnicos

### Definición
Proporcionan detalles sobre **cómo** están almacenados y procesados los datos, incluyendo estructura interna de archivos, formatos de compresión, campos de encabezado, entre otros.

- **Ejemplo**: El tipo de archivo (CSV, JSON, Parquet), la codificación de caracteres (UTF-8), resoluciones de imagen, etc.

### Utilidad
- Facilitan el **procesamiento y la migración** de datos entre distintos sistemas.
- Reducen la pérdida de información al compartir formatos o mover datos.

### Prácticas Recomendadas
- Incluir especificaciones como versión de software y librerías usadas.
- Documentar formatos y protocolos de transferencia de datos.

---

## 6. Metadatos de Negocio

### Definición
Describen el significado y **rol en la organización** de los datos, en términos de procesos de negocio, reglas o KPI.

- **Ejemplo**: Definir qué es un "cliente activo", cómo se calcula la "tasa de conversión" o quién es el responsable de un indicador en particular.

### Utilidad
- Alinean la semántica con las necesidades y el lenguaje de la empresa.
- Ayudan a entender cómo los datos se traducen en decisiones de negocio.

### Prácticas Recomendadas
- Validar definiciones con los líderes de cada área.
- Reflejar estas definiciones en el Glosario de Términos.

---

## 7. Metadatos Operativos u Operacionales

### Definición
Se refieren a la gestión en tiempo real de los datos: disponibilidad, rendimiento del sistema, registros de fallas o tiempos de ejecución.

- **Ejemplo**: Información acerca de la frecuencia de actualización de un dataset, el horario de ejecución de un proceso ETL o la latencia de un servicio.

### Utilidad
- Permite supervisar la **calidad del servicio** y la fiabilidad de los procesos.
- Identificar cuellos de botella o incidencias rápidamente.

### Prácticas Recomendadas
- Monitorear métricas clave (tiempos de carga, tasas de error) en dashboards.
- Definir alertas para condiciones anómalas (overuse, fallos continuos).

---

## 8. Metadatos de Gobernanza

### Definición
Abarcan aspectos legales, normativos y de políticas internas aplicables a los datos: leyes de privacidad, clasificación de confidencialidad, niveles de acceso.

- **Ejemplo**: Bandera que indica si un dataset contiene datos personales sujetos a RGPD.

### Utilidad
- Asegura el cumplimiento de regulaciones y reduce riesgos legales.
- Define los controles de acceso y las sanciones en caso de incumplimiento.

### Prácticas Recomendadas
- Mantener catálogos de clasificación (p.ej., público, interno, confidencial).
- Establecer flujos de aprobación para acceder a ciertos datos.

---

## 9. Conclusión

Las **tipologías de metadatos** permiten analizar y controlar la información desde múltiples perspectivas: **descripción**, **estructura**, **administración**, **uso**, **técnica**, **negocio**, **operaciones** y **gobernanza**. Al combinar todas estas visiones, las organizaciones logran una gestión integral de sus activos de datos, alineando tanto las necesidades de **TI** como las **estratégicas**.


