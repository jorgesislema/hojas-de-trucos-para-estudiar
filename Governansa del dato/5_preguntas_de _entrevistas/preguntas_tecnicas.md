# Preguntas Técnicas (Data Governance / Gestión de Metadatos)

A continuación encontrarás **100 preguntas técnicas** relacionadas con la **Gobernanza del Dato**, la **Gestión de Metadatos**, la **Calidad de Datos**, el **Linaje**, y temas afines. Estas preguntas sirven como guía de estudio o preparación para entrevistas técnicas en roles de Data Steward, Data Governance Manager, Data Engineer, entre otros.

---

## 1. Preguntas Fundamentales sobre Data Governance

1. **¿Qué es Data Governance y en qué se diferencia de Data Management?**  
   - Data Governance establece políticas, roles y procesos para garantizar la seguridad, calidad y cumplimiento normativo de los datos. Data Management se enfoca en la administración técnica y operativa de los datos.

2. **¿Cuáles son los pilares clave de un programa de Gobierno de Datos?**  
   - Políticas, calidad de datos, linaje, metadatos, roles y cumplimiento normativo.

3. **¿Cómo se mide la madurez de una organización en términos de Gobierno de Datos?**  
   - Con modelos como DAMA-DMBOK o DCAM, evaluando la gestión, calidad y cumplimiento de datos.

4. **¿Cuál es la importancia de un Data Governance Framework?**  
   - Estandariza procesos, roles y políticas para gestionar datos de manera efectiva.

5. **¿Qué diferencias hay entre un Data Steward y un Data Owner?**  
   - El Data Owner define políticas y permisos, mientras que el Data Steward supervisa la calidad y aplicación de dichas políticas.

---

## 2. Preguntas sobre Gestión de Metadatos

6. **¿Qué son los metadatos y por qué son importantes?**  
   - Son datos sobre datos. Permiten catalogar, estructurar y gestionar activos de información de manera eficiente.

7. **¿Cuáles son los tipos de metadatos más comunes?**  
   - Descriptivos, estructurales, administrativos, de negocio, operacionales y técnicos.

8. **¿Cómo se integran los metadatos en una arquitectura de datos moderna?**  
   - A través de Data Catalogs, herramientas de linaje y sistemas de metadatos centralizados.

9. **¿Qué herramientas se utilizan para la gestión de metadatos?**  
   - Collibra, Informatica, Alation, Apache Atlas, entre otras.

10. **¿Cómo se automatiza la captura de metadatos en una organización?**  
   - Mediante herramientas ETL, API de metadatos y soluciones de catalogación automatizada.

---

## 3. Preguntas sobre Linaje de Datos

11. **¿Qué es el linaje de datos y por qué es crítico en la trazabilidad?**  
   - Es el seguimiento del flujo de datos desde su origen hasta su destino, asegurando transparencia y calidad.

12. **¿Cómo se implementa el linaje de datos en una arquitectura de BI?**  
   - A través de ETL logs, Data Catalogs y herramientas como Informatica o Apache Atlas.

13. **¿Cómo documentar el linaje en un entorno de Big Data?**  
   - Mediante metadata enriquecida, pipelines versionados y almacenamiento de logs de transformación.

14. **¿Cuál es el impacto del linaje de datos en auditorías y regulaciones?**  
   - Permite demostrar el origen y transformación de los datos, cumpliendo con normativas como GDPR y HIPAA.

15. **¿Cuáles son las mejores prácticas para mantener un linaje de datos actualizado?**  
   - Implementar automatización en el rastreo de datos y versionado de procesos.

---

## 4. Preguntas sobre Calidad de Datos

16. **¿Qué métricas se utilizan para medir la calidad de los datos?**  
   - Precisión, completitud, consistencia, validez, unicidad y actualidad.

17. **¿Cómo manejar datos duplicados en un sistema de gestión de datos?**  
   - Mediante técnicas de deduplicación, algoritmos de coincidencia y normalización de datos.

18. **¿Qué estrategias recomiendas para limpiar datos sucios en un Data Warehouse?**  
   - Uso de reglas de validación, ETL preprocesado y machine learning para detección de anomalías.

19. **¿Cómo se puede garantizar la calidad de datos en flujos de integración (ETL)?**  
   - Implementando validaciones, transformación de datos controlada y auditoría en cada paso.

20. **¿Qué impacto tiene la mala calidad de datos en la toma de decisiones?**  
   - Puede llevar a decisiones erróneas, pérdida de confianza y sanciones regulatorias.


## 5. Preguntas sobre Seguridad de Datos

21. **¿Cuáles son los principales riesgos de seguridad en la gestión de datos?**  
   - Accesos no autorizados, pérdida de datos, ataques cibernéticos y exposición de información sensible.

22. **¿Cómo se implementa una política de acceso basada en roles (RBAC) en bases de datos?**  
   - Definiendo permisos y roles de usuario según la función de cada empleado en la organización.

23. **¿Qué estrategias recomiendas para proteger datos personales en cumplimiento con GDPR?**  
   - Cifrado, anonimización, minimización de datos y control estricto de accesos.

24. **¿Cómo manejar un incidente de fuga de datos en una organización?**  
   - Identificar la causa, contener la amenaza, notificar a las partes afectadas y reforzar controles de seguridad.

25. **¿Qué es la autenticación multifactor y por qué es importante en la seguridad de datos?**  
   - Es un mecanismo que requiere múltiples credenciales para el acceso, reduciendo el riesgo de accesos no autorizados.

---

## 6. Preguntas sobre Arquitectura de Datos

26. **¿Qué diferencias existen entre una arquitectura centralizada y una descentralizada?**  
   - La centralizada almacena datos en un único sistema, mientras que la descentralizada distribuye datos en múltiples fuentes.

27. **¿Qué consideraciones debes tomar al diseñar una arquitectura de datos en la nube?**  
   - Seguridad, escalabilidad, costos, cumplimiento normativo y compatibilidad con herramientas analíticas.

28. **¿Cómo se optimiza una base de datos para consultas de alto rendimiento?**  
   - Indexación, particionamiento, optimización de consultas SQL y almacenamiento en caché.

29. **¿Qué es la arquitectura orientada a eventos y cómo se aplica en la gestión de datos?**  
   - Se basa en eventos en tiempo real para procesar flujos de datos en plataformas como Kafka y AWS Kinesis.

30. **¿Cómo garantizar la disponibilidad y resiliencia en una arquitectura de datos distribuida?**  
   - Mediante replicación de datos, balanceo de carga y estrategias de failover.

---

## 7. Preguntas sobre Master Data Management (MDM)

31. **¿Qué es MDM y por qué es clave en la calidad de los datos?**  
   - MDM centraliza datos maestros asegurando consistencia en toda la organización.

32. **¿Cuáles son los retos comunes en la implementación de un MDM?**  
   - Integración con sistemas existentes, resistencia al cambio y limpieza de datos inconsistentes.

33. **¿Cómo se gestiona la calidad de los datos en un sistema MDM?**  
   - A través de reglas de validación, deduplicación y normalización.

34. **¿Qué diferencia hay entre datos maestros y datos transaccionales?**  
   - Los datos maestros son entidades clave (clientes, productos), mientras que los transaccionales registran actividades (ventas, compras).

35. **¿Qué metodologías existen para la implementación de MDM en una empresa?**  
   - Consolidado, coexistente y centralizado.

---

## 8. Preguntas sobre Cumplimiento Normativo

36. **¿Cuáles son las regulaciones más relevantes en Gobierno de Datos?**  
   - GDPR, HIPAA, CCPA, SOX, PCI-DSS.

37. **¿Cómo afecta GDPR la forma en que las empresas almacenan y procesan datos?**  
   - Requiere consentimiento, derecho al olvido, protección de datos y auditorías constantes.

38. **¿Qué mecanismos se pueden implementar para auditar el cumplimiento normativo de datos?**  
   - Logs de acceso, monitoreo de actividad, herramientas de trazabilidad y reportes automáticos.

39. **¿Cómo garantizar que los datos en una organización cumplan con las normativas de privacidad?**  
   - Implementando controles de acceso, encriptación y minimización de datos.

40. **¿Qué desafíos enfrentan las empresas al adaptarse a regulaciones de datos en múltiples jurisdicciones?**  
   - Diferencias en requisitos legales, costos de cumplimiento y complejidad operativa.

---

## 9. Preguntas sobre Procesamiento de Datos

41. **¿Qué diferencias existen entre procesamiento batch y procesamiento en tiempo real?**  
   - Batch procesa grandes volúmenes de datos en intervalos, mientras que el tiempo real maneja eventos instantáneos.

42. **¿Cómo optimizar un pipeline de datos en un entorno de Big Data?**  
   - Uso de procesamiento distribuido, paralelización y almacenamiento eficiente.

43. **¿Qué es Apache Spark y cómo se usa en procesamiento de datos a gran escala?**  
   - Es un motor de análisis distribuido que permite procesamiento rápido en memoria.

44. **¿Cómo manejar la latencia en sistemas de procesamiento de datos en tiempo real?**  
   - Optimización de consultas, reducción de transformaciones innecesarias y balanceo de carga.

45. **¿Cuáles son las ventajas de usar Data Lake en comparación con Data Warehouse?**  
   - Mayor flexibilidad en almacenamiento, procesamiento sin esquema rígido y escalabilidad.
---
## 10. Preguntas sobre ETL y Data Integration

46. **¿Qué es un proceso ETL y cómo se diferencia de ELT?**  
   - ETL (Extract, Transform, Load) primero transforma los datos antes de cargarlos en el destino, mientras que ELT carga primero y transforma después.

47. **¿Cuáles son los principales desafíos en la integración de datos desde múltiples fuentes?**  
   - Inconsistencias en formatos, calidad de datos, duplicación y problemas de latencia.

48. **¿Cómo optimizar la carga de datos en un proceso ETL?**  
   - Uso de paralelización, indexación, reducción de transformaciones innecesarias y particionamiento.

49. **¿Qué estrategias utilizarías para manejar grandes volúmenes de datos en un pipeline ETL?**  
   - Procesamiento distribuido, compresión de datos y escalabilidad horizontal.

50. **¿Qué herramientas de ETL son más utilizadas en la industria?**  
   - Informatica PowerCenter, Talend, Apache Nifi, AWS Glue y Microsoft SSIS.

---

## 11. Preguntas sobre DataOps y Automatización

51. **¿Qué es DataOps y cómo mejora la gestión de datos?**  
   - Es un enfoque ágil para la gestión de datos, promoviendo integración continua, automatización y monitoreo.

52. **¿Cómo se pueden automatizar pipelines de datos?**  
   - Usando herramientas como Apache Airflow, Prefect o AWS Step Functions.

53. **¿Cómo integrar pruebas automatizadas en un pipeline de datos?**  
   - Implementando validaciones de calidad de datos y detección de anomalías en cada paso del flujo de datos.

54. **¿Qué beneficios aporta CI/CD en la gestión de datos?**  
   - Mayor eficiencia, reducción de errores, despliegues más rápidos y trazabilidad.

55. **¿Cuáles son los principales retos en la implementación de DataOps?**  
   - Cultura organizacional, integración con herramientas existentes y gobernanza de datos.

---

## 12. Preguntas sobre Calidad de Datos

56. **¿Cómo se pueden detectar datos anómalos en una base de datos?**  
   - Mediante análisis de distribuciones, reglas de validación y machine learning para detección de anomalías.

57. **¿Qué es el data profiling y cómo ayuda en la calidad de los datos?**  
   - Es un análisis para identificar inconsistencias, duplicados y patrones en los datos.

58. **¿Cómo se puede medir la confiabilidad de una fuente de datos?**  
   - Evaluando la exactitud, completitud, consistencia y frecuencia de actualización.

59. **¿Cuáles son las técnicas más utilizadas para limpiar datos sucios?**  
   - Normalización, imputación de valores faltantes, eliminación de duplicados y validaciones automatizadas.

60. **¿Qué impacto tiene la mala calidad de datos en modelos de machine learning?**  
   - Puede sesgar modelos, reducir precisión y generar predicciones erróneas.

---

## 13. Preguntas sobre Monitoreo y Auditoría de Datos

61. **¿Cómo garantizar la trazabilidad de datos en un entorno analítico?**  
   - Mediante linaje de datos, logs de auditoría y documentación de transformaciones.

62. **¿Qué técnicas se pueden usar para auditar bases de datos en busca de cambios no autorizados?**  
   - Implementación de triggers, logs de acceso y herramientas de auditoría automatizada.

63. **¿Cómo se puede detectar y prevenir fraudes en la gestión de datos?**  
   - Aplicando análisis de comportamiento, reglas de detección de fraudes y machine learning.

64. **¿Cuál es el papel de los logs en la gobernanza de datos?**  
   - Permiten rastrear accesos, modificaciones y asegurar cumplimiento normativo.

65. **¿Cómo implementar un sistema de monitoreo en tiempo real para detectar anomalías en datos?**  
   - Usando herramientas de streaming analytics como Apache Flink, Spark Streaming o Google Dataflow.

---

## 14. Preguntas sobre Machine Learning y Datos

66. **¿Cómo influye la calidad de datos en el rendimiento de un modelo de Machine Learning?**  
   - Datos inconsistentes o incompletos pueden sesgar modelos, reducir precisión y generar resultados incorrectos.

67. **¿Qué estrategias utilizarías para manejar datos desbalanceados en un problema de clasificación?**  
   - Uso de técnicas como oversampling, undersampling y generación de datos sintéticos (SMOTE).

68. **¿Qué es el feature engineering y por qué es importante en modelos de datos?**  
   - Es el proceso de transformar datos brutos en características relevantes que mejoran el rendimiento del modelo.

69. **¿Cómo abordarías el problema de la multicolinealidad en un dataset?**  
   - Mediante análisis de correlación, VIF (Variance Inflation Factor) y eliminación de variables redundantes.

70. **¿Qué herramientas utilizas para gestionar grandes volúmenes de datos en Machine Learning?**  
   - Apache Spark, TensorFlow Data Validation, Dask, y herramientas de big data analytics.

---

## 15. Preguntas sobre Seguridad y Privacidad de Datos

71. **¿Qué diferencia hay entre encriptación en tránsito y en reposo?**  
   - En tránsito protege los datos mientras se transfieren, en reposo los protege cuando están almacenados.

72. **¿Cómo proteger datos sensibles en entornos de nube?**  
   - Mediante cifrado de datos, control de accesos, autenticación multifactor y políticas de seguridad adecuadas.

73. **¿Qué es la anonimización de datos y en qué casos se aplica?**  
   - Técnica para eliminar información identificable de datos personales, usada en cumplimiento con GDPR y otras normativas.

74. **¿Qué medidas de seguridad implementarías en una base de datos de producción?**  
   - Auditoría de accesos, encriptación de datos, uso de roles de usuario y backups automáticos.

75. **¿Cómo prevenir ataques de inyección SQL en una base de datos?**  
   - Usando consultas parametrizadas, validación de entradas y configuraciones de seguridad adecuadas.

---

## 16. Preguntas sobre Almacenamiento y Procesamiento de Datos

76. **¿Cuáles son las diferencias entre Data Warehouse y Data Lake?**  
   - Data Warehouse es estructurado y optimizado para consultas analíticas, Data Lake almacena datos en bruto sin estructura fija.

77. **¿Cómo manejar datos semi-estructurados en una arquitectura de Big Data?**  
   - Usando formatos como JSON, Avro o Parquet, junto con motores de procesamiento como Spark.

78. **¿Qué es la normalización en bases de datos y cuándo se debe aplicar?**  
   - Técnica para reducir redundancia y mejorar integridad de datos, aplicable en sistemas OLTP.

79. **¿Cómo garantizar la consistencia de datos en un sistema distribuido?**  
   - Mediante técnicas de replicación, quorum y el modelo de consistencia eventual.

80. **¿Qué son las bases de datos NoSQL y en qué casos se recomiendan?**  
   - Bases de datos optimizadas para escalabilidad horizontal, útiles en big data y aplicaciones en tiempo real.

---

## 17. Preguntas sobre Estrategias de Datos y Business Intelligence

81. **¿Qué es un KPI y cómo definirías uno para medir el impacto de la calidad de datos?**  
   - Indicador clave de rendimiento, ejemplo: % de registros con valores nulos en una base de datos crítica.

82. **¿Cómo diseñarías un dashboard efectivo para análisis de datos?**  
   - Usando visualizaciones claras, métricas relevantes y segmentación de datos clave.

83. **¿Qué herramientas de BI recomendarías y por qué?**  
   - Tableau, Power BI, Looker, por su facilidad de uso y capacidad de integración con múltiples fuentes de datos.

84. **¿Cómo implementarías una estrategia de Data Governance en una empresa sin experiencia previa?**  
   - Definiendo roles, estableciendo políticas de calidad y seguridad, y capacitando a los equipos en buenas prácticas de datos.

85. **¿Cuál es la relación entre Data Governance y Data Strategy?**  
   - Data Governance es el conjunto de políticas y procesos que aseguran la calidad y seguridad de los datos, mientras que Data Strategy define cómo se usan los datos para lograr objetivos de negocio.

---

## 18. Preguntas sobre Automatización y Data Engineering

86. **¿Cómo diseñarías un pipeline de datos escalable?**  
   - Usando arquitectura modular, procesamiento distribuido y automatización con orquestadores como Apache Airflow.

87. **¿Qué estrategias de particionamiento aplicarías en una base de datos para mejorar el rendimiento?**  
   - Particionamiento por rango, hash o lista dependiendo del tipo de consultas frecuentes.

88. **¿Cómo garantizar la calidad de datos en un flujo ETL automatizado?**  
   - Implementando validaciones, controles de calidad y monitoreo de métricas clave.

89. **¿Cómo manejar esquemas de datos cambiantes en un sistema de integración?**  
   - Uso de esquemas flexibles, versionado de datos y transformación dinámica de estructuras.

90. **¿Cuáles son los beneficios del procesamiento en stream frente a batch?**  
   - Procesamiento en tiempo real, reducción de latencia y capacidad de reaccionar a eventos en vivo.

---

## 19. Preguntas sobre Tendencias y Futuro del Gobierno de Datos

91. **¿Cómo impacta la inteligencia artificial en la gestión de datos?**  
   - Permite automatizar calidad de datos, descubrir patrones y mejorar predicciones.

92. **¿Cuáles son las tendencias emergentes en Data Governance?**  
   - Automatización de linaje, adopción de Data Mesh y aumento del uso de Data Fabric.

93. **¿Qué desafíos enfrentan las empresas en la gestión de datos en la nube?**  
   - Seguridad, costos, cumplimiento normativo y portabilidad de datos.

94. **¿Cómo mejorar la colaboración entre equipos de negocio y tecnología en gestión de datos?**  
   - Implementando un catálogo de datos accesible, estableciendo estándares claros y fomentando comunicación entre áreas.

95. **¿Qué impacto tiene el uso de datos en la sostenibilidad empresarial?**  
   - Optimización de recursos, reducción de desperdicios y mejora de eficiencia energética mediante análisis de datos.

96. **¿Qué es el concepto de Data Mesh y cómo difiere de Data Lake?**  
   - Data Mesh descentraliza la propiedad de los datos en equipos de dominio, mientras que Data Lake centraliza datos en un único repositorio.

97. **¿Qué papel juega la automatización en la calidad de datos?**  
   - Reduce errores humanos, permite detección temprana de anomalías y mejora la eficiencia operativa.

98. **¿Cuáles son los beneficios de implementar un enfoque Data-Driven en una organización?**  
   - Toma de decisiones basada en datos, eficiencia operativa y ventaja competitiva.

99. **¿Cómo se adapta el Gobierno de Datos a entornos ágiles?**  
   - Flexibilizando políticas de datos, integrándose con DevOps y promoviendo cultura de colaboración.

100. **¿Qué impacto tiene la ética en el uso de datos y cómo garantizar prácticas responsables?**  
   - Asegurando transparencia, equidad y evitando sesgos en el manejo de datos y algoritmos de IA.





