# Catálogo de Datos

Un **Catálogo de Datos** es un inventario organizado de los activos de información de una organización, incluyendo sus metadatos clave (descripción, ubicación, propietario, uso, etc.). A diferencia del Diccionario de Datos y el Glosario de Términos, el catálogo busca proporcionar una **visión global** de todo lo que existe y quién es responsable de cada conjunto de datos, facilitando su descubrimiento y reutilización.

---

## 1. ¿Por qué se Necesita un Catálogo de Datos?

1. **Descubrimiento de Información**: Permite a los usuarios ubicar rápidamente los datos que necesitan para sus análisis o proyectos.
2. **Reutilización de Activos**: Evita la duplicación de esfuerzos y el almacenamiento redundante de datos.
3. **Transparencia y Gobierno**: Da visibilidad a todos los activos, promoviendo el cumplimiento de normas y la asignación clara de responsabilidades.
4. **Acelera la Toma de Decisiones**: Con un inventario de fuentes de datos, los equipos pueden crear informes y análisis basados en información confiable y bien documentada.

---

## 2. Elementos Clave en un Catálogo de Datos

1. **Nombre del Activo**  
   - El título o identificador con el que se conoce al conjunto de datos (por ejemplo, `Transacciones_Ventas_2025`).
2. **Descripción / Resumen**  
   - Breve explicación de qué contiene el dataset, su origen y propósito.
3. **Metadatos Técnicos**  
   - Esquema de la base de datos, formato de archivo, volumen, frecuencia de actualización.
4. **Metadatos de Negocio**  
   - Significado en el contexto de la organización, indicadores relevantes, responsable de la calidad del dato.
5. **Propietario o Responsable (Owner)**  
   - Persona o área que define las reglas de acceso y se encarga de su mantenimiento.
6. **Políticas de Acceso y Seguridad**  
   - Definir si el conjunto de datos es público, restringido, confidencial, etc.
7. **Linaje** (opcional)  
   - Fuente original y transformaciones relevantes que ha sufrido el conjunto de datos.
8. **Enlaces a Diccionario de Datos y Glosario** (opcional)  
   - Relación con definiciones específicas de campos y términos clave.

---

## 3. Ejemplo de Catálogo de Datos

| Nombre del Activo        | Descripción                                          | Formato / Ubicación    | Propietario       | Frecuencia   | Nivel de Acceso       |
|--------------------------|------------------------------------------------------|------------------------|-------------------|-------------|-----------------------|
| **Ventas_Online_2025**   | Registros de compras realizadas vía e-commerce.      | Base de datos (SQL)    | E-commerce Lead   | Diaria      | Restringido           |
| **Clientes_Corporativos**| Lista de clientes y su información de facturación    | Excel en SharePoint    | Área de Finanzas  | Semanal     | Confidencial          |
| **Inventario_Almacén**   | Detalle del stock y ubicación de productos           | CSV en Data Lake       | Jefe de Operaciones| En tiempo real | Interno (colaboradores) |
| **Diccionario de Datos** | Campos y definiciones de todos los sistemas          | Repositorio GitHub     | Data Governance   | Bajo demanda | Público Interno       |

---

## 4. Pasos para Crear un Catálogo de Datos

1. **Identificar Activos**  
   - Hacer un relevamiento de las principales bases de datos, archivos compartidos, data lakes, etc.
2. **Definir Estructura de Metadatos**  
   - Decidir qué información se recopilará de cada activo (propietario, frecuencia, clasificación, etc.).
3. **Seleccionar Herramientas**  
   - Puede ser una hoja de cálculo compartida, un repositorio de metadatos, o plataformas dedicadas (Collibra, Informatica).
4. **Centralizar y Validar**  
   - Consolidar la información en un mismo lugar y validar con los propietarios.
5. **Publicar y Comunicar**  
   - Asegurarse de que todas las áreas conozcan el catálogo y sepan cómo utilizarlo.
6. **Mantener y Actualizar**  
   - Establecer un proceso para revisar periódicamente la información y capturar cambios.

---

## 5. Herramientas para la Catalogación

- **Hojas de Cálculo o Documentos Compartidos**: Adecuadas para un alcance pequeño o inicial.
- **Bases de Datos / Portales Web**: Se implementan formularios para que los propietarios mantengan el catálogo.
- **Soluciones de Mercado** (Collibra, Informatica, IBM, Alation): Ofrecen automatización de escaneo de metadatos, flujos de aprobación, linaje, etc.

---

## 6. Mejores Prácticas

1. **Mantenerlo Vivo**: El catálogo solo es útil si se actualiza con regularidad y refleja la realidad.
2. **Integración con el Diccionario de Datos**: Cada activo puede enlazar con definiciones detalladas de sus campos.
3. **Asignar un Data Steward por Activo**: Alguien responsable del contenido y la precisión de la información catalogada.
4. **Clasificación de Datos**: Incluir etiquetas de confidencialidad o sensibilidad para asegurar el cumplimiento de normativas.
5. **Reportes de Uso**: Monitorizar cuántos equipos consultan el catálogo y qué conjuntos de datos son más consumidos.

---

## 7. Conclusión

Un **Catálogo de Datos** dota a la organización de una visión global de sus activos de información y facilita la búsqueda, el análisis y la toma de decisiones basadas en datos confiables. Integrado con el **Diccionario de Datos** y el **Glosario de Términos**, se convierte en un pilar esencial para el éxito en la **Gestión de Metadatos**.


