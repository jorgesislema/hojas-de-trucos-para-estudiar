# 📌 Arquitectura Basada en Eventos (Event-Driven Architecture)

## 📌 Introducción
La **arquitectura basada en eventos (EDA)** permite diseñar sistemas **desacoplados, escalables y eficientes** mediante la comunicación asíncrona entre componentes.

En este documento exploraremos:
✅ **Principios clave de la arquitectura basada en eventos**.  
✅ **Cómo construir sistemas escalables con eventos**.  
✅ **Patrones comunes y herramientas utilizadas**.  
✅ **Errores comunes y mejores prácticas**.  
✅ **Ejemplo práctico con Apache Kafka y RabbitMQ**.  

---

## 📍 1. ¿Qué es la Arquitectura Basada en Eventos? 🔄

### 📌 Definición
La arquitectura basada en eventos **desacopla los servicios** permitiendo que se comuniquen **mediante la emisión y procesamiento de eventos**.

### 🔹 **Componentes Clave**
✅ **Productores (Producers)** → Generan eventos y los publican en un sistema de mensajería.  
✅ **Brokers de Mensajes** → Middleware que transmite eventos a los consumidores (Ej. Kafka, RabbitMQ, AWS SNS).  
✅ **Consumidores (Consumers)** → Servicios que procesan eventos de manera asíncrona.  
✅ **Event Store** → Almacena eventos históricos para análisis (Ej. Event Sourcing con Apache Kafka).  

📄 **Ejemplo de Flujo de Eventos:**  
📌 Un usuario realiza una compra → Se genera un evento `orden_creada` → El servicio de facturación recibe el evento y genera una factura → El servicio de envíos procesa la orden.

---

## 📍 2. Ventajas y Beneficios de la Arquitectura Basada en Eventos ✅

✔ **Desacoplamiento** → Los servicios no dependen directamente entre sí.  
✔ **Escalabilidad** → Maneja grandes volúmenes de eventos sin bloquear procesos.  
✔ **Baja Latencia** → Responde en tiempo real a cambios en el sistema.  
✔ **Alta Disponibilidad** → Reduce puntos de falla centralizados.  
✔ **Ideal para Microservicios** → Permite comunicación asíncrona entre servicios.  

---

## 📍 3. Patrones Comunes en EDA 📊

### 📌 **1. Pub/Sub (Publicador/Suscriptor)**
✅ Un servicio (publicador) emite eventos que pueden ser recibidos por múltiples suscriptores.  
📌 **Ejemplo:** AWS SNS, Apache Kafka, RabbitMQ.  

### 📌 **2. Event Sourcing**
✅ Almacena eventos en un log inmutable en lugar de modificar datos directamente.  
📌 **Ejemplo:** Bases de datos como EventStoreDB y Apache Kafka.  

### 📌 **3. CQRS (Command Query Responsibility Segregation)**
✅ Separa las operaciones de escritura (comandos) de las consultas (queries).  
📌 **Ejemplo:** Usado en sistemas financieros con Event Sourcing.  

---

## 📍 4. Implementación Práctica con Apache Kafka y RabbitMQ 🛠️

### 📌 **Ejemplo: Publicador y Consumidor con Kafka (Python)**

📄 **Publicador (Producer)**
```python
from kafka import KafkaProducer
import json

producer = KafkaProducer(
    bootstrap_servers='localhost:9092',
    value_serializer=lambda v: json.dumps(v).encode('utf-8')
)

evento = {"tipo": "orden_creada", "orden_id": 1234, "cliente": "Juan"}
producer.send('ordenes', value=evento)
print("Evento enviado:", evento)
```

📄 **Consumidor (Consumer)**
```python
from kafka import KafkaConsumer
import json

consumer = KafkaConsumer(
    'ordenes',
    bootstrap_servers='localhost:9092',
    value_deserializer=lambda x: json.loads(x.decode('utf-8'))
)

for mensaje in consumer:
    evento = mensaje.value
    print("Evento recibido:", evento)
```
✅ **Beneficio:** Permite procesar eventos en tiempo real sin bloqueo.  

### 📌 **Ejemplo con RabbitMQ (Node.js)**

📄 **Publicador (Producer)**
```javascript
const amqp = require('amqplib/callback_api');

amqp.connect('amqp://localhost', function(error0, connection) {
    connection.createChannel(function(error1, channel) {
        const queue = 'ordenes';
        const mensaje = JSON.stringify({ orden_id: 1234, cliente: "Juan" });

        channel.assertQueue(queue, { durable: true });
        channel.sendToQueue(queue, Buffer.from(mensaje));

        console.log("Evento enviado:", mensaje);
    });
});
```

📄 **Consumidor (Consumer)**
```javascript
const amqp = require('amqplib/callback_api');

amqp.connect('amqp://localhost', function(error0, connection) {
    connection.createChannel(function(error1, channel) {
        const queue = 'ordenes';

        channel.assertQueue(queue, { durable: true });
        channel.consume(queue, function(msg) {
            console.log("Evento recibido:", msg.content.toString());
        }, { noAck: true });
    });
});
```
✅ **Beneficio:** RabbitMQ permite enrutamiento flexible de eventos entre múltiples servicios.  

---

## 📍 5. Errores Comunes y Soluciones 🚨

### ❌ **Error #1: No manejar la idempotencia en eventos**
✔ **Solución:** Incluir identificadores únicos para evitar procesamiento duplicado.

### ❌ **Error #2: No diseñar eventos bien estructurados**
✔ **Solución:** Usar formatos estándar como **JSON o Avro** con esquemas claros.

### ❌ **Error #3: Falta de monitoreo en eventos**
✔ **Solución:** Implementar herramientas como **Prometheus, Grafana o ELK Stack**.

### ❌ **Error #4: No gestionar el almacenamiento de eventos históricos**
✔ **Solución:** Usar **Event Sourcing** para persistencia de eventos.

---

## 📍 6. Comparación Kafka vs RabbitMQ 📊

| **Característica** | **Apache Kafka** | **RabbitMQ** |
|-------------------|----------------|------------|
| **Modelo** | Log distribuido (Event Sourcing) | Mensajería tradicional (Broker) |
| **Latencia** | Baja | Media |
| **Escalabilidad** | Alta | Media |
| **Caso de uso** | Big Data, IoT | Microservicios, Workflow |

---

## 📍 7. Conclusión ✅

📌 **La arquitectura basada en eventos permite construir sistemas desacoplados y escalables.**  
📌 **Apache Kafka es ideal para streaming masivo de eventos.**  
📌 **RabbitMQ es excelente para mensajería en microservicios.**  
📌 **La implementación de patrones como Event Sourcing y Pub/Sub mejora la resiliencia del sistema.**  

