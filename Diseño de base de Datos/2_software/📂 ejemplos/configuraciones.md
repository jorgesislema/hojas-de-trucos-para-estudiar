# 📌 Configuración de Herramientas para Bases de Datos

¡Bienvenido! Aquí encontrarás una **guía detallada** sobre cómo configurar las principales herramientas utilizadas en el diseño y gestión de bases de datos. Si ya instalaste el software y necesitas configurarlo para trabajar de manera óptima, este manual es para ti. 🚀

---

## **📌 1️⃣ Configuración de MySQL y MySQL Workbench**

### **🔹 Configuración Básica de MySQL**
1. Abre MySQL Workbench e inicia sesión con el usuario **root**.
2. Para mejorar la seguridad, configura una nueva contraseña:
   ```sql
   ALTER USER 'root'@'localhost' IDENTIFIED BY 'nueva_contraseña';
   ```
3. Para permitir conexiones remotas (opcional), edita el archivo `my.cnf` en Linux o `my.ini` en Windows y cambia la línea:
   ```ini
   bind-address = 0.0.0.0
   ```
4. Reinicia MySQL con:
   ```bash
   sudo systemctl restart mysql  # Linux
   net stop MySQL80 && net start MySQL80  # Windows
   ```

### **🔹 Configuración en MySQL Workbench**
1. Ve a **Database > Manage Connections**.
2. Crea una nueva conexión y define:
   - Hostname: `localhost` (o IP remota si aplica).
   - Usuario: `root`.
   - Puerto: `3306` (por defecto en MySQL).
   - Testea la conexión antes de guardar.

---

## **📌 2️⃣ Configuración de PostgreSQL y pgAdmin**

### **🔹 Configuración Básica de PostgreSQL**
1. Cambia la contraseña del usuario `postgres` con:
   ```sql
   ALTER USER postgres WITH PASSWORD 'nueva_contraseña';
   ```
2. Edita el archivo `pg_hba.conf` para permitir conexiones remotas:
   ```ini
   host    all    all    0.0.0.0/0    md5
   ```
3. Edita `postgresql.conf` y cambia la línea:
   ```ini
   listen_addresses = '*'
   ```
4. Reinicia PostgreSQL con:
   ```bash
   sudo systemctl restart postgresql
   ```

### **🔹 Configuración en pgAdmin**
1. Abre pgAdmin y agrega un nuevo servidor.
2. En **General**, asigna un nombre al servidor.
3. En **Connection**, define:
   - Host: `localhost` o IP remota.
   - Usuario: `postgres`.
   - Puerto: `5432` (por defecto en PostgreSQL).
   - Guarda los cambios y prueba la conexión.

---

## **📌 3️⃣ Configuración de MongoDB y MongoDB Compass**

### **🔹 Configuración Básica de MongoDB**
1. Accede a MongoDB con:
   ```bash
   mongosh
   ```
2. Cambia la contraseña del usuario administrador:
   ```js
   use admin;
   db.createUser({
      user: "admin",
      pwd: "nueva_contraseña",
      roles: [{ role: "root", db: "admin" }]
   });
   ```
3. Para habilitar accesos remotos, edita el archivo `mongod.conf`:
   ```yaml
   bindIp: 0.0.0.0
   ```
4. Reinicia MongoDB:
   ```bash
   sudo systemctl restart mongod
   ```

### **🔹 Configuración en MongoDB Compass**
1. Abre MongoDB Compass y selecciona **New Connection**.
2. Define:
   - URI de conexión: `mongodb://localhost:27017/`
   - O si es remoto: `mongodb://usuario:contraseña@IP_remota:27017/`
3. Prueba la conexión y guarda.

---

## **📌 4️⃣ Configuración de SQLite y DB Browser**

### **🔹 Configuración Básica de SQLite**
1. Para verificar SQLite, usa:
   ```bash
   sqlite3 --version
   ```
2. Crea una base de datos:
   ```bash
   sqlite3 mi_base.db
   ```
3. Configura para que SQLite use claves foráneas:
   ```sql
   PRAGMA foreign_keys = ON;
   ```

### **🔹 Configuración en DB Browser for SQLite**
1. Abre DB Browser y selecciona **Open Database**.
2. Configura opciones de visualización en **Preferences > Data Browser**.
3. Guarda los cambios y comienza a trabajar.

---

## **📌 5️⃣ Configuración de Redis**

### **🔹 Configuración Básica de Redis**
1. Verifica que Redis está activo:
   ```bash
   redis-cli ping
   ```
2. Para proteger Redis con contraseña, edita `redis.conf`:
   ```ini
   requirepass mi_contraseña
   ```
3. Guarda los cambios y reinicia Redis:
   ```bash
   sudo systemctl restart redis
   ```

---

# 📌 **Resumen de Configuraciones Claves**

| Base de Datos | Configuración Clave | Archivo Configurado |
|--------------|-----------------|------------------|
| **MySQL** | Habilitar conexiones remotas | `my.cnf` |
| **PostgreSQL** | Permitir accesos externos | `pg_hba.conf` y `postgresql.conf` |
| **MongoDB** | Habilitar usuarios y accesos | `mongod.conf` |
| **SQLite** | Activar claves foráneas | `PRAGMA foreign_keys = ON;` |
| **Redis** | Establecer contraseña de acceso | `redis.conf` |
