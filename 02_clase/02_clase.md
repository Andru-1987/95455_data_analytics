
# Unidad 2: Data Analytics - Bases de Datos Relacionales

> [_Presentacion_](https://docs.google.com/presentation/d/1Ay6UWj0FDDz0Zz_F_7sN4Spv9hRo0OHl/edit?slide=id.p1#slide=id.p1)

- [Link de Instalacion de SQL Server Windows](https://www.youtube.com/watch?v=9btSqHFMFmA)
- [Link de Instalacion de SQL Server Linux](https://www.youtube.com/watch?v=GBboALYvvuE)
- [Link de Instalacion de SQL Server MacOs](https://www.youtube.com/watch?v=3BFxALltQaM)

## Objetivos de la Clase

- Seleccionar una base de datos adecuada para proyectos analíticos.
- Diseñar un diagrama del modelo entidad-relación con herramientas digitales actuales (Miro, Figma, dbdiagram.io).
- Repasar conceptos clave de la Unidad 2.
- Plantear dudas sobre el 1º entregable, incorporando buenas prácticas de documentación.

## Tipos de Bases de Datos - Diferencias Fundamentales

| Tipo | Estructura | Casos de Uso | Ventajas | Ejemplos |
|------|------------|--------------|----------|----------|
| **Relacional** | Tablas con filas y columnas, esquema fijo | Sistemas transaccionales, ERP, CRM | ACID, integridad referencial, SQL estandar | MySQL, PostgreSQL, Oracle |
| **NoSQL** | Documentos, clave-valor, grafos, columnas | Big Data, aplicaciones web escalables | Escalabilidad horizontal, esquema flexible | MongoDB, Cassandra, Redis |
| **Vectoriales** | Almacenamiento de vectores multidimensionales | IA, búsqueda semántica, recomendaciones | Búsqueda por similitud, ML nativo | Pinecone, Weaviate, Chroma |
| **Column Wide** | Almacenamiento por columnas en lugar de filas | Data warehousing, análisis business intelligence | Compresión eficiente, consultas agregadas rápidas | BigQuery, Snowflake, Redshift |
| **Graph** | Nodos y relaciones con propiedades | Redes sociales, recomendaciones, fraud detection | Consultas de relaciones complejas, traversing eficiente | Neo4j, Amazon Neptune |
| **Time Series** | Optimizado para datos temporales | IoT, métricas, monitoreo | Compresión temporal, consultas de ventana | InfluxDB, TimescaleDB |

## Metodología SMART para Descripción de Dataset

La metodología SMART ayuda a definir objetivos claros y alcanzables para tu análisis de datos:

### Específico (Specific)
- Definir claramente qué problema buscas resolver
- **Ejemplo**: "Analizar el patrón de ventas mensuales de productos electrónicos en la región norte durante 2023"

### Medible (Measurable)
- Identificar métricas cuantificables
- **Ejemplo**: "Incremento del 15% en ventas, reducción del 10% en devoluciones, tasa de conversión del 5%"

### Alcanzable (Achievable)
- Verificar que los datos necesarios están disponibles
- **Ejemplo**: "El dataset contiene historial de ventas por producto, región y fecha desde enero 2023"

### Relevante (Relevant)
- Asegurar que el análisis aporta valor al negocio
- **Ejemplo**: "El análisis ayudará a optimizar inventario y planificar campañas de marketing regionales"

### Temporal (Time-bound)
- Definir un período específico para el análisis
- **Ejemplo**: "Análisis del período enero-diciembre 2023, con entregables para el 15 de enero 2024"

### Ejemplo de Aplicación SMART:
**Dataset**: Ventas de retail
- **Específico**: Analizar estacionalidad de ventas por categoría de producto
- **Medible**: Crecimiento intermensual, participación por categoría
- **Alcanzable**: Dataset con 18 meses históricos, 20+ categorías
- **Relevante**: Optimización de compras y promociones
- **Temporal**: Período enero 2022 - junio 2023

## Base de Datos y Modelo Relacional

### Lo que hemos visto en esta unidad:

- Identificación de tipos de bases de datos
- Integración de conocimientos generales de data warehouse
- Identificación de la estructura de una base de datos relacional
- Diseño de una base de datos relacional
- Reconocimiento de un modelo de datos relacional
- Plataformas cloud modernas: BigQuery, Snowflake, Databricks
- Cómo la IA puede apoyar en la limpieza y preprocesamiento de datos

## Claves en Bases de Datos

### El Modelo Entidad-Relación y las Claves

Las claves son campos dentro de las tablas que hacen única cada fila y permiten identificar las relaciones entre ellas.

- **Clave primaria (PK)**: identificador único
- **Clave foránea (FK)**: campo que conecta dos tablas
- **UUIDs**: utilizados para entornos distribuidos

**Ejemplo de claves:**
- En una tabla "Clientes": ID_Cliente (PK)
- En una tabla "Pedidos": ID_Pedido (PK) + ID_Cliente (FK)

## Selección de la Fuente de Información

### Preguntas orientadoras:

- ¿Es un tema que me interesa?
- ¿Permite visualizaciones claras sin procesar demasiado?
- ¿Incluye datos cuantitativos y cualitativos?
- ¿Tiene fechas y suficiente complejidad?

## Actividad en Clase: Definición de la Fuente de Información

### Requisitos del dataset:
- Al menos 15 columnas
- Formato plano (xls, csv, txt, o Google Sheets exportado)
- Evitar datos sensibles
- Verificar licencias abiertas (Open Data)

### Sugerencias para elegir datasets:
- Proyectos personales, laborales o académicos
- Fuentes confiables: Google Dataset Search, Kaggle, Our World in Data, Google Cloud Public Datasets, Hugging Face Datasets
- Considerar incluir texto, imágenes o datos no estructurados

## Características de una Buena Fuente de Datos

- **Datos cualitativos** que permitan segmentar la información (Ejemplo: País, Provincia, Categoría de productos)
- **Datos cuantitativos** que permitan realizar cálculos (Ejemplo: Ventas, Costos, Cantidad)
- **Columna de fecha** con día, mes, año (formato: 01/02/2022)
- **Mínimo 15 columnas** en la tabla plana

## Modelo Relacional

### Definición:
El modelo relacional es un conjunto de tablas en el cual se representan tanto los datos de estas tablas como las relaciones entre las mismas.

**Estructura:**
- Tablas compuestas por registros (filas) y campos (columnas)

**Ejemplo E-commerce:**
- Tabla Usuarios
- Tabla Pedidos  
- Tabla Productos
- Tabla Reviews
- Conexiones mediante PK y FK

## Modelo Entidad-Relación

<details>
    <summary>Apartado especial de tipos de Notacion de Diagramas de Entidad-Relacion</summary>

**1. Diagrama Entidad-Relación Conceptual (Modelo Conceptual)**

- **Objetivo:** Representar las **entidades y relaciones principales** del negocio, sin preocuparse por detalles técnicos.
- **Se usa en:** Fase inicial del modelado (análisis de requerimientos).

**Elementos:**

* **Entidades:** objetos del negocio (rectángulos)
* **Relaciones:** asociaciones entre entidades (rombos)
* **Atributos:** propiedades (óvalos)

**Ejemplo:**

```
[Alumno] —(cursa)— [Materia]
```

> Aquí no se muestran claves primarias ni tipos de datos.

---

**2. Diagrama Entidad-Relación Lógico (Modelo Lógico)**

- **Objetivo:** Mostrar cómo se **organizarán los datos** en la base de datos relacional.
- **Se usa en:** Diseño lógico, antes de crear las tablas físicas.

**Elementos:**

* Entidades con **claves primarias y foráneas**
* **Cardinalidades** explícitas (1:1, 1:N, N:M)
* **Tipos de datos** pueden aparecer
* Relaciones ya reflejan **cómo se implementarán**

**Ejemplo:**

```
Alumno (id_alumno PK, nombre)
Materia (id_materia PK, nombre)
Inscripcion (id_alumno FK, id_materia FK, fecha)
```

> Aquí el modelo ya se acerca al diseño de tablas.

---

**3. Diagrama Físico o Modelo Físico de Datos**

- **Objetivo:** Mostrar cómo se **implementa realmente** el modelo en un motor de base de datos (PostgreSQL, MySQL, etc.).
- **Se usa en:** Etapa final antes del deployment.

**Incluye:**

* Tipos de datos específicos (VARCHAR, INT, DATE)
* Restricciones (NOT NULL, UNIQUE, DEFAULT)
* Índices y claves foráneas
* Nombres reales de tablas y columnas

> Este diagrama suele generarse con herramientas como **MySQL Workbench, pgModeler o DBeaver**.

---

**4. Diagramas según la Notación Usada**

Existen **diferentes notaciones** visuales para representar DERs, independientemente del nivel (conceptual/lógico/físico):

| Notación                         | Descripción                                                                        | Ejemplo                                          |
| -------------------------------- | ---------------------------------------------------------------------------------- | ------------------------------------------------ |
| **Chen**                         | Clásica: entidades en rectángulos, relaciones en rombos, atributos en óvalos.      | 🟦–⬡–🟩                                          |
| **Crow’s Foot (pata de gallo)**  | Más usada en ingeniería. Indica cardinalidades (1:N, 0..N) con “patas de gallo”.   | 🔹 `Cliente ─< Pedido`                           |
| **IE (Information Engineering)** | Similar a Crow’s Foot pero más técnica, orientada a herramientas CASE.             | 🔸 Muestra cardinalidades con líneas y símbolos. |
| **UML (Class Diagram adaptado)** | Usa clases, atributos y asociaciones; útil cuando el modelo se integra con código. | ⚙️ `class Usuario { id: int; nombre: string }`   |

---

**Resumen visual**

| Nivel      | Enfoque                  | Ejemplo de Notación | Uso Principal                      |
| ---------- | ------------------------ | ------------------- | ---------------------------------- |
| Conceptual | Negocio                  | Chen                | Identificar entidades y relaciones |
| Lógico     | Base de datos relacional | Crow’s Foot / IE    | Definir claves, cardinalidades     |
| Físico     | Implementación real      | Crow’s Foot / UML   | Crear tablas en SQL                |


</details>

### Elementos del Diagrama:
- **Entidades (tablas)**: representadas mediante rectángulos
- **Atributos (columnas)**: representados mediante elipses
- **Relaciones**: representadas mediante rombos

### Ejemplo visual:
```
CLIENTES                    PRODUCTOS
[Rectángulo]                [Rectángulo]
|-- Nombre (elipse)         |-- Clave (elipse)
|-- Sexo (elipse)           |-- Descripción (elipse)
|-- Teléfono (elipse)       |-- P. Unitario (elipse)
|-- N. Cliente (elipse)     |-- Existencias (elipse)

        \                       /
         \                     /
          \---[ROMBO: Tiene]--/
                     |
                     |
               [VENTAS - Rectángulo]
               |-- N. Cliente (elipse)
               |-- Folio (elipse)
               |-- Clave (elipse)
               |-- Cantidad (elipse)
               |-- Total (elipse)
               |-- Subtotal (elipse)
               |-- IVA (elipse)
```

### Herramientas recomendadas:
- dbdiagram.io
- Lucidchart
- Draw.io
- Figma

## Actividad Colaborativa: Diseño de Diagrama Entidad-Relación

### Descripción:
En forma grupal, elegir un modelo de negocios e identificar cinco posibles tablas que formarán parte del modelo de datos, y diseñar el diagrama de E-R con todos sus componentes.

### Reglas fundamentales:
- Toda tabla debe tener una PK única y no nula
- Las tablas relacionadas deben compartir un campo en común (FK)
- Las FK deben estar definidas como PK en la tabla origen
- Indicar el tipo de relación: 1:1, 1:N, M:N

### Ejemplo de relaciones:
- **1:1**: Un empleado tiene un único número de seguridad social
- **1:N**: Un cliente puede tener múltiples pedidos
- **M:N**: Un estudiante puede estar en múltiples cursos y un curso puede tener múltiples estudiantes (requiere tabla intermedia)

## Entrega 1: Definición Fuente de Datos

### Consigna:
Deberán entregar la documentación inicial y la base de datos, los cuales serán la base de tu proyecto final.

### Aspectos a incluir:
- Descripción temática con metodología SMART
- Hipótesis del análisis
- Dataset seleccionado (mínimo 15 columnas)

### Formato:
- Base de datos: CSV, TXT, XLS, o Google Sheets
- Documentación: PDF
- Recomendación: usar GitHub o Google Drive con control de versiones

## Resumen de la Clase

- Tipos de bases de datos: relacionales, NoSQL, vectoriales, column wide
- Metodología SMART para definición de objetivos
- Claves primarias, foráneas y datos externos
- Bases de datos
- Modelo relacional
- Modelo entidad-relación

## Recursos Adicionales

- Historia de las bases de datos
- ¿Qué es un Data Warehouse?
- Normalización de bases de datos
- Snowflake schema vs star schema
- Generación automática de esquemas con IA