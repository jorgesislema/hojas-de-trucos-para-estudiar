# Casos Prácticos de Linaje de Datos

En esta sección, profundizaremos en **casos reales** de linaje de datos para ilustrar cómo las organizaciones pueden trazar y documentar el flujo de la información desde su origen hasta su consumo final. Los ejemplos abarcan distintos sectores y muestran los desafíos y soluciones que se han aplicado para garantizar una trazabilidad sólida.

---

## 1. Caso: Empresa de Retail Multicanal

### Descripción
Una empresa de retail que vende productos tanto en **tiendas físicas** como en **línea** deseaba tener una visión unificada de sus ventas para:

- Calcular métricas de rendimiento por canal.
- Estimar inventarios óptimos.
- Detectar patrones de compra.

### Flujo de Linaje
1. **Punto de Origen**: Datos de punto de venta (POS) en tiendas, registros de transacciones en línea.
2. **Consolidación**: Procesos de ETL que unen las tablas `Ventas_Tiendas` y `Ventas_Online` en una tabla maestra llamada `Ventas_Total`.
3. **Transformaciones**:
   - Normalización de fechas y monedas (diferentes países).
   - Limpieza de duplicados (clientes que compran en ambos canales con distinta cuenta).
4. **Data Warehouse**: Almacén central donde se calculan KPIs, como el total de ventas por canal, promedio de ticket y recurrencia de compra.
5. **Visualización**: Dashboard de BI para gerentes de tienda y ejecutivos.

### Resultado
- Mejor control del **inventario** al correlacionar ventas en tiempo real.
- Aumento de la **eficiencia** en la toma de decisiones, pues se unificaron criterios de medición.
- **Trazabilidad clara**: Si un informe está desalineado, se revisa el pipeline ETL para ver dónde pudo introducirse la inconsistencia.

---

## 2. Caso: Financiera con Requisitos Regulatorios

### Descripción
Una entidad financiera debe reportar mensualmente a la autoridad sobre **préstamos** y **tasa de morosidad**. La auditoría exige demostrar la fuente original de cada dato y las reglas de cálculo.

### Flujo de Linaje
1. **Origen**: Módulo de core bancario con datos de créditos y pagos, generando tablas `Creditos_Activos` y `Historial_Pagos`.
2. **Transformaciones**:
   - Cálculo de intereses devengados.
   - Clasificación de préstamos en categorías (hipotecario, consumo, vehicular).
3. **Depuración**:
   - Eliminación de cuentas cerradas.
   - Ajustes por refinanciaciones.
4. **Almacén de Datos (DW)**: Se crean vistas específicas para informes de morosidad (`View_MorosidadMensual`).
5. **Reporte Regulatorio**: Generado en PDF y enviado a la autoridad.
6. **Registro de Procesos**: Cada paso (workflow de ETL) está documentado en una herramienta de linaje (p. ej., Collibra, IBM IGC) que muestra la secuencia de tablas y reglas aplicadas.

### Resultado
- **Cumplimiento** demostrado en auditorías al rastrear datos hasta la cuenta del cliente.
- Mayor **transparencia**: Los reguladores validaron la coherencia entre el informe y la información de origen.

---

## 3. Caso: Start-up de Logística y Distribución

### Descripción
Una start-up de logística presta servicios de envío a varios e-commerce, generando datos de envío, costos de transporte, incidencias y tiempos de entrega.

### Flujo de Linaje
1. **Sistemas de Recepción**: Se capturan datos de órdenes (ID de paquete, dirección de destino, estado de pago).
2. **Asignación de Rutas**:
   - Un algoritmo optimiza las rutas de reparto y asigna repartidores.
   - Los datos se transforman en un formato de "plan de ruta diario".
3. **Actualización en Tiempo Real**:
   - Cada repartidor actualiza el estado ("En reparto", "Entregado").
   - Se guarda la ubicación GPS en una tabla `Seguimiento_Envios`.
4. **Analítica y Reportes**:
   - Se miden tiempos promedio de entrega, incidencias y valor de la mercancía.
5. **Propuesta de Mejora**:
   - Con los datos de linaje, se detectan cuellos de botella en rutas específicas y se reoptimiza el plan de logística.

### Resultado
- **Optimización de Costos**: Ajuste de rutas y personal basado en datos históricos.
- **Visibilidad en tiempo real**: Clientes y operadores ven el estado de su envío y su trayectoria.

---

## 4. Caso: Empresa de Televisión por Streaming

### Descripción
Una plataforma de streaming recopila datos sobre el comportamiento de los usuarios (reproducción de series, películas, ratings, etc.) para ofrecer recomendaciones personalizadas.

### Flujo de Linaje
1. **Captura de Eventos**: Cada vez que un usuario reproduce, pausa o califica un contenido, se genera un evento en el sistema de logging.
2. **Normalización**:
   - Los eventos se agrupan en una arquitectura de Big Data (ej. Apache Kafka).
   - Se extraen metadatos como ID de usuario, ID de contenido, tiempo de visualización.
3. **Batch vs. Streaming**:
   - Algunos datos se procesan en tiempo real para sugerir "próximo episodio".
   - Otros datos se consolidan en lotes para análisis de marketing.
4. **Modelos de Recomendación**:
   - Se entrenan algoritmos (collaborative filtering) con la información de usuarios.
5. **Contenido Final**:
   - Al usuario se le presenta una lista de sugerencias basadas en su historial.

### Resultado
- **Personalización Mejorada**: Incremento en la retención de usuarios.
- **Trazabilidad**: Si un usuario recibe recomendaciones irrelevantes, se puede examinar en qué parte del flujo (captura, normalización, modelo) ocurrió la distorsión.

---

## 5. Puntos Clave Aprendidos

1. **Documentación**: Los flujos de ETL, scripts y transformaciones deben quedar registrados en una herramienta de gobierno o un repositorio de procesos.
2. **Automatización**: Integrar sistemas que capturen metadatos de forma automática, evitando la dependencia exclusiva en documentación manual.
3. **Verificación y Calidad**: Revisar periódicamente la consistencia de los datos en cada eslabón.
4. **Seguridad y Cumplimiento**: Cuando se maneja información sensible (finanzas, datos personales), es esencial protegerla en cada tramo.
5. **Evolución Continua**: El linaje debe actualizarse a medida que se agregan nuevas fuentes o se modifican procesos.

---

## 6. Conclusión

Estos casos demuestran cómo, en distintos sectores y proyectos, un **linaje de datos** bien definido aporta claridad, confiabilidad y capacidad de auditoría. Contribuye a una mejor toma de decisiones, ya que cualquier error o discrepancia puede rastrearse hasta su origen y corregirse rápidamente. Además, se sientan las bases para una **cultura de datos** sólida y responsable.


