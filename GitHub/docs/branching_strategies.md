🌿 Estrategias de Ramificación en Git

Este documento describe distintas estrategias de ramificación (branching) para proyectos que utilizan Git. Conocerlas te ayudará a organizar tu trabajo de manera efectiva, evitar conflictos y facilitar la colaboración.

📑 Tabla de Contenidos

🏷️ Terminología y Conceptos Clave

🌱 Estrategia 1: Git Flow

🚀 Estrategia 2: GitHub Flow

⚙️ Estrategia 3: Trunk-Based Development

❓ Cuándo Usar Cada Estrategia

🔍 Consejos Generales

📚 Recursos Adicionales

🏷️ Terminología y Conceptos Clave

Rama principal (main/master): Rama base donde se encuentra el código "estable".

Feature branch: Rama destinada a desarrollar una nueva funcionalidad o tarea.

Release branch: Rama utilizada para estabilizar una versión antes de publicarla en producción.

Hotfix branch: Rama creada para resolver con urgencia problemas críticos en producción.

Estas definiciones permiten entender mejor cada estrategia de ramificación y su flujo de trabajo asociado.

🌱 Estrategia 1: Git Flow

Propuesta por Vincent Driessen, Git Flow es de las estrategias más conocidas y consta de:

Rama principal (master): Almacena el código que se encuentra en producción.

Rama develop: Rama de integración donde se fusionan las feature branches.

Feature branches: Se crean a partir de develop para cada nueva funcionalidad.

Release branches: Preparan la siguiente versión estable antes de fusionarse a master y develop.

Hotfix branches: Creación rápida desde master para corregir errores urgentes.

Ventajas

Control: Claridad sobre dónde se encuentran las nuevas funciones y cuál es la versión estable.

Organización: Adecuado para proyectos con ciclos de lanzamientos bien definidos.

Desventajas

Complejidad: Varias ramas paralelas requieren mayor coordinación.

Ritmo de releases: Si las publicaciones son muy frecuentes, Git Flow puede volverse "pesado".

🚀 Estrategia 2: GitHub Flow

Propuesta por GitHub, es más ligera que Git Flow y se enfoca en:

Rama principal (main): Siempre funcional y lista para despliegue.

Feature branches: Se crean desde main y se fusionan mediante Pull Requests.

Despliegue continuo: Cada vez que main recibe merges, se asume que puede desplegarse.

Ventajas

Simplicidad: Menos ramas que administrar.

Integración continua: Ideal para lanzamientos rápidos y frecuentes.

Desventajas

Formalidad limitada: Para equipos grandes con ciclos de lanzamiento complejos, puede ser insuficiente.

Disciplina necesaria: Requiere una cultura sólida de testing y CI.

⚙️ Estrategia 3: Trunk-Based Development

En el Trunk-Based Development, la mayor parte del trabajo se hace directamente sobre una sola rama principal (main o trunk). Se crean ramas breves para funcionalidades y se integran rápidamente.

Commits frecuentes en la rama principal.

Ramas efímeras para nuevas características, fusionándolas en cuestión de horas o pocos días.

Automatización: Pruebas y validaciones automáticas para cada cambio.

Ventajas

Menos conflictos: Integraciones rápidas con commits pequeños.

Rápido desarrollo: Se alinea con metodologías ágiles y CI/CD.

Desventajas

Alta disciplina: Es fácil "romper" la rama principal si no se hacen pruebas adecuadas.

Grandes desarrollos: No es la mejor opción si tienes grandes tareas que tardan semanas en completarse.

❓ Cuándo Usar Cada Estrategia

Git Flow: Proyectos con lanzamientos grandes, fechas definidas y ciclos de desarrollo más largos.

GitHub Flow: Proyectos que buscan simplicidad, lanzamientos frecuentes o despliegue continuo.

Trunk-Based Development: Equipos ágiles con integraciones diarias y cultura fuerte de CI/CD.

🔍 Consejos Generales

Establece convenciones: Nombra las ramas con claridad (feature/login-page, hotfix/payment-bug).

Commits pequeños: Facilitan revisiones y reducen conflictos.

Pull Requests: Fomentan la revisión, ayudan a discutir problemas y obtener retroalimentación.

CI/CD: Usa GitHub Actions, Jenkins o GitLab CI para automatizar pruebas e integraciones.

Documenta tu estrategia: Asegura que todos los colaboradores entiendan la política de ramas y lanzamientos.

📚 Recursos Adicionales

Git Flow original (Vincent Driessen)

GitHub Flow Docs

Trunk-Based Development

Comparativa de Estrategias

Elige la estrategia que mejor se adapte a tu equipo y proyecto. Un buen flujo de ramificación facilita la colaboración, reduce conflictos y asegura la estabilidad del código. ¡Feliz desarrollo!