
## Introducción a SQL, Normalización y Consultas Básicas

[PRESENTACION](https://docs.google.com/presentation/d/1oGEmeVXEdhX0YwDRdvAySfWip_G3OZhW/edit?slide=id.p2#slide=id.p1)

### 1. Introducción y objetivos

**Duración:** 5 min
**Propósito:** contextualizar y definir los objetivos del encuentro.
**Contenidos:**

* Qué es SQL y por qué es importante en Data Analytics.
* Objetivos de la clase:

  * Comprender la normalización.
  * Diseñar un modelo entidad-relación.
  * Usar sentencias y operadores básicos en SQL.
  * Aplicar funciones escalares y subconsultas simples.

---

### 2. Normalización de bases de datos

**Duración:** 25–30 min
**Propósito:** introducir el diseño lógico y la eficiencia en el almacenamiento de datos.
**Contenidos:**

1. **Concepto de normalización**

   * Evitar redundancias e inconsistencias.
   * Beneficios para la integridad y mantenimiento.
2. **Dependencias funcionales**

   * Cómo identificarlas en un modelo.
3. **Formas normales** (1FN, 2FN, 3FN) — breve repaso conceptual.
4. **Ejemplo práctico de normalización**

   * Mostrar un modelo con redundancia y cómo se optimiza.
5. **Modelos de base de datos:**

   * **Esquema estrella vs copo de nieve.**
6. **Mini actividad:** identificar errores de diseño en un ejemplo dado.

---

### 3. Diseño del modelo entidad–relación (E–R)

**Duración:** 40–45 min
**Propósito:** aplicar la teoría de normalización a un proyecto práctico.
**Contenidos:**

1. Qué es un **modelo E–R**.
2. Componentes principales:

   * Entidades, atributos, relaciones.
   * Cardinalidades.
   * Claves primarias (PK) y foráneas (FK).
3. **Actividad 1 (parte 1):**

   * Diseñar el modelo E–R de un proyecto final (mín. 5 tablas).
   * Verificar PK, FK y relaciones.
4. **Puesta en común.**
5. **Actividad 2 (parte 2):**

   * Crear columnas, definir tipos de datos y claves.
6. **Puesta en común.**

*(Se puede usar Mural, PowerPoint o Google Slides para el diseño visual.)*

---

### 4. Fundamentos del lenguaje SQL

**Duración:** 50–60 min
**Propósito:** ejercitar las sentencias y operadores básicos para manipular datos.
**Contenidos:**

1. **Sintaxis básica: SELECT y FROM.**

   * Crear tabla de ejemplo (`Clientes`).
   * Realizar consultas simples.
2. **Operadores SQL**

   * Relacionales (`=`, `>`, `<`, `<>`, `LIKE`…)
   * Lógicos (`AND`, `OR`, `NOT`)
   * Aritméticos (`+`, `-`, `*`, `/`)
3. **Actividad guiada:** detectar errores en consultas SQL.

---

### 5. Sentencias comunes en SQL

**Duración:** 40 min
**Propósito:** aplicar consultas con filtros, orden y agrupamientos.
**Contenidos:**

1. **DISTINCT – WHERE – AS**

   * Ejercicios prácticos en vivo.
2. **ORDER BY – TOP – GROUP BY – HAVING**

   * Ejercicios guiados con interpretación de resultados.
3. **Mini desafío:** analizar qué devuelve cada consulta.

---

### 6. Funciones escalares y subconsultas

**Duración:** 35–40 min
**Propósito:** aprender transformaciones temporales de datos.
**Contenidos:**

1. Qué son las **funciones escalares.**

   * Ejemplos (`UPPER`, `LOWER`, `CONCAT`, `LEN`, `AVG`, `GETDATE`, etc.)
2. **Subconsultas básicas:**

   * Cuándo usarlas y cómo anidarlas en `WHERE` o `FROM`.
3. **Actividad práctica:**

   * Consultas que combinen funciones escalares y subconsultas.

---

### 7. Actividad integradora – Práctica SQL

**Duración:** 35–40 min
**Propósito:** consolidar el aprendizaje.
**Consignas:**
Resolver consultas SQL que involucren:

* Filtros y operadores.
* Funciones escalares.
* Subconsultas.
* Agrupamientos y ordenamientos.
  *(Usar los ejercicios del documento como base, organizados del 1 al 8).*

---

### 8. Entregable N°2 – Definición del modelo relacional

**Duración:** 20 min
**Propósito:** preparar la documentación para el proyecto final.
**Requisitos del entregable:**

* Descripción general del proyecto.
* Listado de tablas y relaciones.
* Definición de PK y FK.
* Columnas y tipos de datos.
* Diagrama E–R final.
