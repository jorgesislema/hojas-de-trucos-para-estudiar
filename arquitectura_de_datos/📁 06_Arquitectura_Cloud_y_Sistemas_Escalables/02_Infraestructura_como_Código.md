# 📌 Infraestructura como Código: Terraform y CloudFormation

## 📌 Introducción
La **Infraestructura como Código (IaC)** permite automatizar la gestión y provisión de recursos en la nube mediante archivos de configuración. Dos de las herramientas más utilizadas para IaC son **Terraform** y **AWS CloudFormation**.

En este documento exploraremos:
✅ **Conceptos clave de IaC y su importancia**.  
✅ **Comparación entre Terraform y CloudFormation**.  
✅ **Ejemplos prácticos de implementación**.  
✅ **Errores comunes y soluciones**.  

---

## 📍 1. ¿Qué es la Infraestructura como Código? 📜

### 📌 **Definición**
La **Infraestructura como Código (IaC)** es un enfoque en el que los recursos de infraestructura se definen y gestionan mediante archivos de configuración en lugar de procesos manuales.

### 🔹 **Beneficios de IaC**
✅ **Automatización** → Despliegue rápido y reproducible de entornos.  
✅ **Consistencia** → Evita configuraciones manuales y errores humanos.  
✅ **Escalabilidad** → Permite administrar infraestructuras grandes sin intervención manual.  
✅ **Auditoría y control** → Historial de cambios con control de versiones.  

📌 **Ejemplo de código Terraform:**
```hcl
resource "aws_instance" "example" {
  ami           = "ami-12345678"
  instance_type = "t2.micro"
}
```
📌 **Beneficio:** Despliega una instancia EC2 en AWS con configuración definida en código.

---

## 📍 2. Comparación entre Terraform y CloudFormation ⚖️

| Característica | Terraform | AWS CloudFormation |
|--------------|-----------|-------------------|
| **Proveedor** | HashiCorp | AWS |
| **Compatibilidad** | Multi-nube (AWS, Azure, GCP) | Solo AWS |
| **Lenguaje** | HCL (HashiCorp Configuration Language) | JSON/YAML |
| **Modularidad** | Alta (módulos reutilizables) | Menos flexible |
| **Estado** | Usa archivos de estado locales o remotos | Gestiona automáticamente el estado |
| **Facilidad de uso** | Requiere aprendizaje de HCL | Integrado con AWS, más sencillo para usuarios de AWS |

✅ **Terraform** es ideal para arquitecturas multi-nube y modularidad avanzada.  
✅ **CloudFormation** es la mejor opción si solo trabajas con AWS y buscas integración nativa.  

📌 **Ejemplo de plantilla CloudFormation (YAML):**
```yaml
Resources:
  MyEC2Instance:
    Type: "AWS::EC2::Instance"
    Properties:
      InstanceType: "t2.micro"
      ImageId: "ami-12345678"
```
📌 **Beneficio:** Despliega una instancia EC2 con configuración YAML en AWS.

---

## 📍 3. Ejemplo de Implementación 🛠️

📌 **Caso:** Una empresa necesita desplegar infraestructura en AWS de forma automatizada.

### ✅ **Terraform (Ejemplo de Despliegue en AWS)**
```hcl
provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "web" {
  ami           = "ami-12345678"
  instance_type = "t2.micro"
}
```
📌 **Beneficio:** Provisión de recursos de AWS con código reutilizable y modular.

### ✅ **CloudFormation (Ejemplo de Despliegue en AWS)**
```yaml
Resources:
  MyEC2Instance:
    Type: "AWS::EC2::Instance"
    Properties:
      InstanceType: "t2.micro"
      ImageId: "ami-12345678"
```
📌 **Beneficio:** Integración nativa con AWS sin necesidad de herramientas adicionales.

---

## 📍 4. Errores Comunes y Soluciones 🚨

### ❌ **Error #1: No usar control de versiones en los archivos de IaC**
✔ **Solución:** Usar Git para versionar cambios y evitar pérdidas de configuración.

### ❌ **Error #2: No manejar correctamente el estado en Terraform**
✔ **Solución:** Almacenar el estado en S3 o Terraform Cloud para evitar conflictos.

### ❌ **Error #3: No definir dependencias entre recursos**
✔ **Solución:** Usar **`depends_on`** en Terraform o manejar referencias en CloudFormation.

### ❌ **Error #4: No probar cambios antes de aplicarlos**
✔ **Solución:** Usar comandos como **`terraform plan`** y **`aws cloudformation validate-template`**.

---

## 📍 5. Conclusión ✅

📌 **Terraform** → Ideal para entornos multi-nube y despliegues modulares.  
📌 **CloudFormation** → Recomendado para usuarios que trabajan exclusivamente con AWS.  
📌 **La Infraestructura como Código permite automatización, consistencia y escalabilidad en entornos cloud.**  

