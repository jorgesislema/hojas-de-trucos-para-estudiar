# 📌 Ejemplo: Procesamiento de Datos en Tiempo Real con Kafka

## 📌 Introducción
El procesamiento de datos en tiempo real permite manejar **eventos en vivo** con baja latencia. Apache Kafka es una de las herramientas más utilizadas para lograr **ingestión, procesamiento y transmisión de datos en tiempo real**.

En este documento exploraremos:
✅ **Conceptos clave de Apache Kafka**.  
✅ **Ejemplo práctico de pipeline de datos en tiempo real**.  
✅ **Mejores prácticas y optimización**.  
✅ **Errores comunes y soluciones**.  

---

## 📍 1. ¿Qué es Apache Kafka? ⚡
Apache Kafka es una plataforma de streaming distribuida diseñada para manejar **altos volúmenes de datos en tiempo real**. Se basa en **publicadores, suscriptores y topics** para transmitir eventos de forma escalable y confiable.

### 🔹 **Componentes Clave**
✅ **Producers** → Publican mensajes en un **topic** de Kafka.  
✅ **Brokers** → Manejan la distribución de los datos en el clúster.  
✅ **Topics** → Canal donde se agrupan los mensajes.  
✅ **Consumers** → Aplicaciones que leen y procesan los mensajes.  
✅ **Zookeeper** → Coordina los nodos del clúster de Kafka.  

🔹 **Ejemplo de Flujo de Datos:**
📌 Un sensor IoT envía datos → Kafka recibe los eventos → Una aplicación analiza los datos en tiempo real → Los resultados se almacenan en una base de datos.  

---

## 📍 2. Configuración Básica de Kafka 🛠️

### 📌 Instalación de Kafka (Local o Docker)
```bash
# Descarga Kafka
wget https://downloads.apache.org/kafka/3.1.0/kafka_2.13-3.1.0.tgz

# Extrae y entra al directorio
tar -xvf kafka_2.13-3.1.0.tgz && cd kafka_2.13-3.1.0

# Inicia Zookeeper
bin/zookeeper-server-start.sh config/zookeeper.properties

# Inicia Kafka Broker
bin/kafka-server-start.sh config/server.properties
```

### 📌 Crear un Topic en Kafka
```bash
bin/kafka-topics.sh --create --topic eventos_sensores --bootstrap-server localhost:9092 --partitions 3 --replication-factor 1
```

✅ **Parámetros importantes:**
✔ `partitions`: Define el número de divisiones del topic.  
✔ `replication-factor`: Determina la cantidad de copias de cada mensaje.  

---

## 📍 3. Ejemplo de Pipeline en Tiempo Real con Kafka y Python 🐍

### 📌 **Productor de Datos (Producer)**
Un **producer** genera eventos y los envía a Kafka.
```python
from kafka import KafkaProducer
import json
import time

producer = KafkaProducer(
    bootstrap_servers='localhost:9092',
    value_serializer=lambda v: json.dumps(v).encode('utf-8')
)

# Simulación de eventos en tiempo real
for i in range(10):
    evento = {"sensor_id": i, "temperatura": 20 + i, "timestamp": time.time()}
    producer.send('eventos_sensores', value=evento)
    print(f"Evento enviado: {evento}")
    time.sleep(1)
```
✅ **Explicación:**  
✔ `KafkaProducer` se conecta al servidor de Kafka.  
✔ `value_serializer` convierte los datos en JSON.  
✔ Se simulan eventos cada segundo.

---

### 📌 **Consumidor de Datos (Consumer)**
Un **consumer** lee los eventos de Kafka y los procesa.
```python
from kafka import KafkaConsumer
import json

consumer = KafkaConsumer(
    'eventos_sensores',
    bootstrap_servers='localhost:9092',
    value_deserializer=lambda x: json.loads(x.decode('utf-8'))
)

print("Esperando eventos...")
for mensaje in consumer:
    evento = mensaje.value
    print(f"Evento recibido: {evento}")
```
✅ **Explicación:**  
✔ `KafkaConsumer` se suscribe al topic `eventos_sensores`.  
✔ `value_deserializer` transforma JSON en un diccionario Python.  
✔ Imprime cada evento recibido en tiempo real.

---

## 📍 4. Optimización y Mejores Prácticas 🚀

✅ **Usar múltiples particiones** para escalar el rendimiento.  
✅ **Configurar el tiempo de retención** (`log.retention.hours`) para optimizar almacenamiento.  
✅ **Habilitar compresión** (`compression.type=snappy`) para reducir ancho de banda.  
✅ **Monitorear consumidores** con Kafka Manager o Prometheus.

---

## 📍 5. Errores Comunes y Soluciones 🚨

### ❌ **Error #1: No definir suficientes particiones**
✔ **Solución:** Aumentar el número de particiones para distribuir la carga.

### ❌ **Error #2: Consumers no procesan mensajes correctamente**
✔ **Solución:** Verificar que cada consumidor tenga un `group_id` único.

### ❌ **Error #3: Pérdida de mensajes por configuración incorrecta**
✔ **Solución:** Habilitar `acks=all` en el productor para garantizar entrega confiable.

### ❌ **Error #4: Alta latencia en procesamiento**
✔ **Solución:** Usar **Kafka Streams o Apache Flink** para procesamiento en tiempo real optimizado.

---

## 📍 6. Comparación Kafka vs Otras Tecnologías 📊

| **Característica**   | **Kafka** | **RabbitMQ** | **AWS Kinesis** |
|---------------------|----------|-------------|---------------|
| **Modelo**         | Pub/Sub  | Mensajería  | Streaming     |
| **Latencia**       | Baja     | Media       | Baja          |
| **Escalabilidad**  | Alta     | Media       | Alta          |
| **Caso de uso**    | Big Data, IoT | Microservicios | Data Analytics |

---

## 📍 7. Conclusión ✅

📌 **Apache Kafka permite procesar datos en tiempo real con escalabilidad y alta disponibilidad.**  
📌 **Producers y Consumers permiten construir pipelines de datos robustos.**  
📌 **El monitoreo y optimización son claves para evitar pérdida de eventos.**  

