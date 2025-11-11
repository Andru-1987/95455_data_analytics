## Introducción a SQL, Normalización y Consultas Básicas

[PRESENTACION](https://docs.google.com/presentation/d/1oGEmeVXEdhX0YwDRdvAySfWip_G3OZhW/edit?usp=sharing&ouid=117801297684850401127&rtpof=true&sd=true)

### **1. Para pensar (operadores y sintaxis básica)**

Identifica el error en las siguientes consultas:

1. Consulta con `DISTINCT`, `WHERE` y un operador incorrecto.
2. Consulta que mezcla `GROUP BY` y `WHERE` de manera errónea.
3. Consulta con `LIKE` y un patrón exacto.
4. Consulta con literales de texto sin comillas.

---

### **2. Actividad de repaso**

Observa las siguientes consultas y determina **qué registros traerá cada una**:

1. `SELECT * FROM Clientes`
2. `SELECT N_Cliente, Nombre FROM Clientes`
3. `SELECT Nombre, Sexo FROM Clientes`
4. `SELECT N_Cliente, Telefono, ID_Edad FROM Clientes`

---

### **3. Diseño del modelo entidad–relación**

**Parte 1:**
Diseña el modelo entidad–relación de la temática elegida para tu proyecto final.
Incluye:

* Al menos 5 tablas.
* Entidades, relaciones, tipos de relación y campos clave.

**Parte 2:**
A partir del modelo diseñado:

* Define cinco columnas por tabla.
* Indica las claves primarias, candidatas y foráneas.
* Especifica los tipos de datos de cada columna.

---

### **4. Ejercitando sentencias SQL**

**DISTINCT – WHERE – AS**
Analiza qué registros traerán las siguientes consultas:

1. Consulta con `SELECT DISTINCT *`.
2. Consulta con alias (`AS`) y filtro por `ID_Edad`.
3. Consulta con `DISTINCT`, múltiples columnas y condición numérica.

**ORDER BY – TOP – GROUP BY – HAVING**
Analiza y explica los resultados de consultas que:

1. Ordenan resultados de manera descendente.
2. Muestran solo los primeros 3 registros.
3. Agrupan por nombre y cuentan registros.
4. Filtran grupos con `HAVING`.

---

### **5. Práctica SQL (consultas integradoras)**

Cada consigna requiere decidir si usarás **WHERE**, operadores, **funciones de agregación**, **funciones escalares** o **subconsultas**:

1. Indicar cuántos cursos y carreras tiene el área de Data.
   Renombrar la columna como `cant_asignaturas`.
   *(Keywords: Tipo, Área, Asignaturas)*

2. Obtener nombre, documento y teléfono de estudiantes profesionales en agronomía nacidos entre 1970 y 2000.
   *(Keywords: Estudiantes, Profesión, FechaNacimiento)*

3. Listar docentes que ingresaron en 2021.
   Concatenar nombre y apellido con guion, renombrar `Nombres_Apellidos` y mostrar en mayúsculas.
   *(Keywords: Staff, FechaIngreso, Nombre, Apellido)*

4. Indicar cantidad de encargados de docentes y de tutores.
   Quitar la palabra “Encargado” en los registros.
   *(Keywords: Encargado, Tipo, Encargado_ID)*

5. Calcular el precio promedio de carreras y cursos por jornada, renombrar `Promedio` y ordenar de mayor a menor.
   *(Keywords: Tipo, Jornada, Asignaturas)*

6. Calcular edad de estudiantes en una nueva columna `Edad`, filtrar mayores de 18 y ordenar de menor a mayor.
   *(Keywords: FechaNacimiento, Estudiantes)*

7. Mostrar nombre, correo, camada y fecha de ingreso de staff con correos `.edu` y `DocenteID ≥ 100`.
   *(Keywords: Staff, Correo, DocenteID)*

8. Mostrar documento, domicilio, código postal y nombre de los primeros 5 estudiantes registrados.
   *(Keywords: Documento, Estudiantes, FechaIngreso)*

---

### **6. Entregable N°2 — Definición del modelo relacional**

Prepara un documento en PDF con:

* Descripción general del proyecto y usuario final.
* Listado de tablas con descripción y definición de PK y FK.
* Columnas, tipos de datos y relaciones entre tablas.
* Diagrama entidad–relación final.


---

![Diagrama entidad relacion](./assets/image.png)
