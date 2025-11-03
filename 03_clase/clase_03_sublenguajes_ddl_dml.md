# Sub Languages -> DDL  & DML

[PRESENTACION](https://docs.google.com/presentation/d/1tlL0dN0yrdWLj4K5FRT-Lw5Yt_ay6Wor/edit?slide=id.p1#slide=id.p1)

# Qué conviene saber antes de ver estos temas (resumen breve y práctico)

1. **Conceptos básicos de bases de datos relacionales**s
   Saber qué es una tabla, fila, columna, clave primaria (PK) y clave foránea (FK). Entender por qué normalizamos datos y qué problemas resuelven las relaciones entre tablas.

2. **Sintaxis SQL básica (ANSI/estándar)**
   Escribir consultas SELECT con WHERE, ORDER BY, GROUP BY; usar funciones de agregación (SUM, COUNT, AVG). Conocer la idea de JOIN (INNER, LEFT/RIGHT) para combinar tablas.

3. **Manipulación de datos (DML) simple**
   INSERT INTO, UPDATE, DELETE: cuál es la forma básica y cuándo usar WHERE para no borrar/actualizar todo por accidente.

4. **Definición de estructura (DDL) simple**
   CREATE TABLE, ALTER TABLE, DROP: saber crear una tabla con tipos y restricciones, agregar/quitar columnas y eliminar objetos.

5. **Tipos de datos y valores NULL**
   Conocer tipos comunes (INT, VARCHAR/NVARCHAR, FLOAT/DECIMAL, DATE/DATETIME) y cómo tratar NULLs (IS NULL, ISNULL/COALESCE). Entender implicancias de precisión y formatos de fecha.

6. **Fundamentos de MS SQL Server (T-SQL) que difieren del estándar**
   Qué esperar de T-SQL: `IDENTITY` para autoincremento, `TOP` en vez de `LIMIT`, corchetes `[Nombre]` para identificadores, `GO` como separador de batches, funciones como `GETDATE()`, y `ISNULL()` vs `COALESCE()`. No hace falta ser experto, pero sí conocer estas diferencias comunes.

7. **Herramientas básicas**
   Saber usar al menos una interfaz para ejecutar scripts: SQL Server Management Studio (SSMS), Azure Data Studio o línea de comandos. También saber abrir y manejar archivos CSV/Excel para importar datos.

8. **Operaciones de import/export**
   Importar una planilla a la base (CSV/Excel) — conceptos de mapeo de columnas, encoding y formatos de fecha — y exportar resultados. Tener práctica mínima con Excel o Google Sheets ayuda.

9. **Conceptos básicos de integridad y constraints**
   UNIQUE, PRIMARY KEY, FOREIGN KEY, DEFAULT, CHECK: para qué sirven y cuándo los aplicas para proteger la calidad de datos.

10. **Lógica y aritmética básica, y lectura de errores**
    Saber interpretar mensajes de error básicos (tipo de dato, constraint violation) y hacer operaciones aritméticas y lógicas simples dentro de consultas.

# Mini-check (5 minutos antes de empezar)

* Puedo escribir `SELECT * FROM tabla WHERE columna = 'valor';` y entender el resultado.
* Puedo crear una tabla simple con `CREATE TABLE` y al menos insertar una fila.
* Sé abrir/guardar un CSV y cargarlo desde la herramienta del SGBD.
--- s
Perfecto. A continuación te dejo una **versión completa y depurada** del contenido del archivo *“Clase 03 - Sublenguajes DDL y DML (Edición Profe)”*, ya **sin encuestas, sin dinámicas y sin pausas**, pero con una **redacción pedagógica** y ejemplos prácticos en **SQL estándar (ANSI)** y en **SQL Server (T-SQL)**.

---

# Clase 3 — Sublenguajes DDL y DML

## 1. Introducción

Esta clase está dedicada a los sublenguajes principales del SQL:

* **DDL (Data Definition Language)** → define la estructura de la base de datos.
* **DML (Data Manipulation Language)** → manipula los datos dentro de las tablas.

El foco está puesto en entender los conceptos desde el **SQL estándar (ANSI)** y luego ver cómo se aplican específicamente en **Microsoft SQL Server**.

Antes de iniciar, el entorno de práctica debe estar listo: **abrir SQL Server** y tener una base de datos creada o accesible.

---

## 2. Objetivos de la clase

* Identificar y repasar los sublenguajes **DDL** y **DML**.
* Profundizar en los aspectos prácticos del análisis de datos con **SQL Server**.
* Reforzar los conceptos vistos en los contenidos on-demand, a través de ejemplos prácticos.

---

## 3. Lenguaje SQL: recordatorio general

* SQL significa *Structured Query Language*.
* Es el lenguaje universal para comunicarse con bases de datos relacionales.
* Se compone de varios **sublenguajes**, entre ellos los dos que veremos hoy:

  * **DDL:** definición de estructuras.
  * **DML:** manipulación de datos.

---

## 4. Sublenguaje DDL — *Data Definition Language*

### Qué es

El **DDL** define la forma y estructura de los objetos en una base de datos.
Permite crear, modificar o eliminar objetos como **tablas, vistas, índices, funciones, procedimientos almacenados**, e incluso **bases de datos completas**.

Principales comandos:

* `CREATE`
* `ALTER`
* `DROP`
* `TRUNCATE`

---

### 4.1. CREATE

Crea objetos en la base de datos (por ejemplo, tablas).

**Ejemplo SQL Server (T-SQL):**

```sql
CREATE TABLE Categorias (
    IDCategoria INT NOT NULL IDENTITY PRIMARY KEY,
    Nombre_Categoria VARCHAR(50),
    Descripcion VARCHAR(50)
);
```

**Ejemplo SQL estándar (ANSI SQL):**

```sql
CREATE TABLE Categorias (
    IDCategoria INTEGER GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    Nombre_Categoria VARCHAR(50),
    Descripcion VARCHAR(50)
);
```

---

### 4.2. ALTER

Modifica la estructura de un objeto existente.

**Ejemplo: agregar columna**

```sql
ALTER TABLE Categorias
ADD Cantidad INT;
```

**Ejemplo: eliminar columna**

```sql
ALTER TABLE Categorias
DROP COLUMN Cantidad;
```

---

### 4.3. DROP

Elimina un objeto de la base de datos (tabla, vista, índice, etc.).

```sql
DROP TABLE Categorias;
```

---

### 4.4. TRUNCATE

Elimina todos los registros de una tabla, pero conserva su estructura (columnas, tipos y restricciones).

```sql
TRUNCATE TABLE Categorias;
```

Diferencia con `DELETE`:

* `TRUNCATE` elimina *todos* los registros sin poder filtrar.
* Es más rápido y no se puede revertir fácilmente.

---

## 5. Sublenguaje DML — *Data Manipulation Language*

### Qué es

El **DML** permite manipular los datos dentro de las tablas: insertar, actualizar o eliminar filas.

Principales comandos:

* `INSERT`
* `UPDATE`
* `DELETE`

---

### 5.1. INSERT

Agrega nuevos registros a una tabla.

```sql
INSERT INTO Categorias (categoria_id, nombre, descripcion)
VALUES (1, 'Electrónica', 'Productos electrónicos y gadgets');
```

Podés insertar múltiples registros de una vez:

```sql
INSERT INTO Categorias (categoria_id, nombre, descripcion)
VALUES 
  (2, 'Ropa', 'Prendas y accesorios'),
  (3, 'Hogar', 'Artículos domésticos');
```

---

### 5.2. UPDATE

Modifica datos existentes en una tabla.
Debe incluir **SET** (para definir los nuevos valores) y **WHERE** (para limitar qué registros actualizar).

```sql
UPDATE Categorias
SET descripcion = 'Productos electrónicos y dispositivos tecnológicos'
WHERE categoria_id = 1;
```

Sin `WHERE`, se modificarían todos los registros.

---

### 5.3. DELETE

Elimina registros de una tabla.
También puede combinarse con `WHERE` para filtrar.

```sql
DELETE FROM Categorias
WHERE categoria_id = 1;
```

Si se omite el `WHERE`, se eliminan *todos* los registros.

---

## 6. Vistas (*Views*)

Una **vista** es una “tabla virtual” que se construye a partir de una consulta `SELECT`.
Sirve para:

* Aislar datos sensibles.
* Simplificar consultas complejas.
* Facilitar la lectura de información por parte de usuarios.

**Ejemplo:**

```sql
CREATE VIEW VistaCategorias AS
SELECT categoria_id, nombre, descripcion
FROM Categorias;
```

Uso posterior:

```sql
SELECT * FROM VistaCategorias;
```

En SQL Server se pueden crear vistas dentro de un esquema (`CREATE VIEW dbo.VistaCategorias AS ...`).

---

## 7. Buenas prácticas y notas adicionales

* Usar **comentarios** (`-- comentario`) para documentar tus scripts.
* Probar primero tus `DELETE` y `UPDATE` con un `SELECT` equivalente, para verificar qué filas afectará.
* Evitar crear tablas sin **PRIMARY KEY** o sin tipos de datos adecuados.
* Recordar que en **SQL Server**:

  * `IDENTITY` reemplaza a `AUTO_INCREMENT` (MySQL) o `GENERATED AS IDENTITY` (ANSI).
  * Se usa `TOP` en lugar de `LIMIT`.
  * `GO` separa bloques de instrucciones.
  * `ISNULL()` cumple el rol de `COALESCE()` del estándar SQL.

---

## 8. Recursos recomendados

* **Microsoft Docs:** Normalización y estructura de bases de datos.
* **ResearchGate:** *The Database Normalization Theory and the Theory of Normalized Systems* — Erki Eessaar.
* **Campus MVP:** “7 razones para aprender SQL”.
* **W3Schools SQL:** entorno de práctica gratuito y ejemplos en línea.

---

## 9. Resumen de la clase

Hoy revisamos:

* Qué son los sublenguajes **DDL** y **DML**.
* Cómo crear, modificar y eliminar estructuras (tablas, vistas, columnas).
* Cómo insertar, actualizar y eliminar registros.
* Las principales diferencias entre el estándar SQL y SQL Server.

---

## 10. Avance del curso

**Próxima clase (Unidad 4):**

* SQL aplicado al análisis de datos.
* Funciones escalares, subconsultas y ejercicios prácticos.
* Entregable 2: práctica con lenguaje SQL.

---

¿Querés que prepare este mismo contenido en formato **guion de clase para docentes**, con introducción, explicación y ejemplo para leer o mostrar en vivo?
Puedo entregártelo en `.docx` o `.pdf`, estructurado por secciones con tiempo estimado y objetivos.
