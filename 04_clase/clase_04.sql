SELECT * FROM Asignaturas;

-- EJERCICIOS : 
/*
Indicar cuántos cursos y carreras  tiene el área de Data.
Renombrar la nueva columna como cant_asignaturas. 
Keywords: Tipo, Área, Asignaturas.
*/


-- 
SELECT 
	asig.Tipo,
	COUNT(asig.Tipo) AS cant_asignaturas
FROM Area AS a
INNER JOIN Asignaturas AS asig
-- defino la union
	ON a.AreaID = asig.Area
-- hacer el filtro
WHERE a.Nombre LIKE 'Data'
-- hacer una agrupacion
GROUP BY asig.Tipo;

-- Diagrama
-- las tablas en las que voy a trabajar --> bolsa de informacion 
-- filtrar la informacion
-- que campos necesito viz
-- todo lo que sea de agrupacion --> group by
-- LIMIT ---> cuantos de estos quiero mostrar.


/*
Se requiere saber cual es el nombre, el documento y el teléfono de los estudiantes que son 
profesionales en agronomía y que nacieron entre el año 1970 y el año 2000. 
Keywords: Estudiantes, Profesión, fecha de Nacimiento.
*/

SELECT * FROM Estudiantes AS e
WHERE 
	YEAR(e.[Fecha de Nacimiento]) BETWEEN 1970 AND 2000;



SELECT Nombre, Documento, Telefono
FROM Profesiones AS p
INNER JOIN Estudiantes AS e
	ON p.ProfesionesID = e.Profesion
WHERE -- los filtros
	p.Profesiones LIKE '%agro%'
	AND YEAR(e.[Fecha de Nacimiento]) BETWEEN 1970 AND 2000;
