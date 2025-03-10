# 📌 Seguridad en Bases de Datos: Encriptación y Role-Based Access Control (RBAC)

## 📌 Introducción

Garantizar la seguridad de las bases de datos es fundamental para **proteger la integridad, confidencialidad y disponibilidad** de la información. Implementar **encriptación y control de acceso basado en roles (RBAC)** permite minimizar riesgos de filtraciones y accesos no autorizados.

En este documento exploraremos:
✅ **Encriptación de datos en reposo y en tránsito**.  
✅ **Role-Based Access Control (RBAC) para gestionar permisos**.  
✅ **Errores comunes y soluciones en la seguridad de bases de datos**.  
✅ **Ejemplo de implementación en SQL y NoSQL**.  

---

## 📍 1. Encriptación en Bases de Datos 🔐

### 📌 **¿Por qué es importante la encriptación?**
La encriptación protege los datos almacenados en bases de datos contra accesos no autorizados y ataques cibernéticos. Se divide en dos tipos principales:

### 🔹 **1.1 Encriptación en Reposo**
✅ **Protege los datos almacenados en discos duros o almacenamiento en la nube**.  
✅ **Evita que atacantes accedan a los datos incluso si tienen acceso al almacenamiento físico**.  

📄 **Ejemplo de encriptación en PostgreSQL (AES-256)**
```sql
CREATE EXTENSION pgcrypto;
UPDATE clientes SET datos = pgp_sym_encrypt('Información confidencial', 'clave_secreta');
```
📌 **Beneficio:** Asegura que los datos sensibles permanezcan cifrados en la base de datos.

---

### 🔹 **1.2 Encriptación en Tránsito**
✅ **Protege los datos cuando se transfieren entre clientes y servidores**.  
✅ **Utiliza protocolos como TLS/SSL para asegurar la comunicación**.  

📄 **Ejemplo de configuración de TLS en MySQL**
```sql
ALTER INSTANCE ENABLE INNODB_ENCRYPTION;
```
📌 **Beneficio:** Garantiza que los datos en tránsito no puedan ser interceptados.

---

## 📍 2. Role-Based Access Control (RBAC) 🛡️

### 📌 **¿Qué es RBAC?**
El **Role-Based Access Control (RBAC)** permite restringir el acceso a los datos en función del rol del usuario dentro de una organización.

### 🔹 **Principales Niveles de Acceso**
✅ **Administrador (DBA)** → Control total sobre la base de datos.  
✅ **Desarrollador** → Acceso a consultas y escritura de datos.  
✅ **Analista** → Solo lectura de datos relevantes.  
✅ **Usuario final** → Acceso restringido a sus propios datos.  

📄 **Ejemplo en PostgreSQL**
```sql
CREATE ROLE analista;
GRANT SELECT ON clientes TO analista;
```
📌 **Beneficio:** Evita accesos innecesarios y reduce el riesgo de modificaciones no autorizadas.

---

## 📍 3. Errores Comunes y Soluciones 🚨

### ❌ **Error #1: No usar encriptación en datos sensibles**
✔ **Solución:** Implementar encriptación AES-256 en reposo y TLS en tránsito.

### ❌ **Error #2: Uso de credenciales en texto plano**
✔ **Solución:** Almacenar credenciales en un gestor de contraseñas seguro.

### ❌ **Error #3: Asignar permisos excesivos a usuarios**
✔ **Solución:** Implementar RBAC con privilegios mínimos por rol.

### ❌ **Error #4: No auditar accesos a la base de datos**
✔ **Solución:** Configurar logs de auditoría para rastrear accesos y cambios.

---

## 📍 4. Conclusión ✅

📌 **La encriptación protege los datos en reposo y en tránsito contra accesos no autorizados.**  
📌 **RBAC ayuda a restringir permisos y mejorar la seguridad de la base de datos.**  
📌 **Monitorear y auditar accesos previene vulnerabilidades y fraudes.**  

