-- COMENTARIOS EN LINE
-- DDL --lenguaje de definicion datos 
-- CREATE 

DROP DATABASE mi_primera_base_datos;

CREATE DATABASE mi_primera_base_datos ;

-- seleccionar la base de datos --> como?? 
USE mi_primera_base_datos;

CREATE TABLE comic (
    id INT NOT NULL IDENTITY PRIMARY KEY,  -- AUTO_INCREMENT analogo a IDENTITY
    name VARCHAR(200),
    category VARCHAR(200) DEFAULT 'DC',
    published_date DATE
)


-- ALTER
--  datetime --> !! 

ALTER TABLE comic
ALTER COLUMN published_date DATETIME;

ALTER TABLE comic
ADD price FLOAT;


-- BORRAR OBJETO

DROP TABLE comic;

-- VAMOS A CREAR UNA RELACION



CREATE TABLE categoria(
    id INT NOT NULL IDENTITY PRIMARY KEY,
    name VARCHAR(200)
)


CREATE TABLE comic (
    id INT NOT NULL IDENTITY PRIMARY KEY,  -- AUTO_INCREMENT analogo a IDENTITY
    name VARCHAR(200),
    -- category VARCHAR(200) DEFAULT 'DC',
    id_categoria  INT,
    published_date DATE,
    FOREIGN KEY (id_categoria) REFERENCES categoria(id)
    -- podre hacer una fk por medio de un alter????
)


--- 

INSERT INTO categoria (name)
VALUES 
('DC'),
('Marvel'),
('Image');


--- DQL --> DATA QUERY LANGUAGE
SELECT * FROM categoria;


INSERT INTO comic (name, id_categoria, published_date)
VALUES
('spider-man', 2, GETDATE());



INSERT INTO comic (name, id_categoria, published_date) VALUES 
('Amazing Spider-Man #1', 1, '1963-03-01'), -- ISO 8601
('Batman: The Dark Knight Returns', 2, '1986-02-01'),
('Spawn #1', 3, '1992-05-01'),
('Avengers #4', 1, '1964-03-01'),
('Action Comics #1', 2, '1938-04-01'),
('The Walking Dead #1', 3, '2003-10-01'),
('Fantastic Four #1', 1, '1961-11-01'),
('The Flash #123 (Flash of Two Worlds)', 2, '1961-09-01'),
('Savage Dragon #1', 3, '1993-07-01'),
('X-Men #1', 1, '1963-09-01'),
('Watchmen #1', 2, '1986-09-01'),
('Invincible #1', 3, '2003-01-01'),
('Daredevil #1', 1, '1964-04-01'),
('Green Lantern #76 (Hal & Green Arrow)', 2, '1970-04-01'),
('Witchblade #1', 3, '1995-11-01'),
('Hulk #1', 1, '1962-05-01'),
('Crisis on Infinite Earths #1', 2, '1985-04-01'),
('Gen 13 #1', 3, '1994-02-01'),
('Iron Man #1', 1, '1968-05-01'),
('Justice League of America #1', 2, '1960-10-01');


SELECT * FROM comic;

--- > las tablas que no tienen FK --> Todas las que tienen FK relacionadas

TRUNCATE TABLE comic;


DELETE FROM comic 
WHERE id_categoria = 2;


UPDATE  comic
    SET published_date = GETDATE()
WHERE id_categoria = 3;


-- CREAR UNA bASE DE DATOS DE USTEDES 
-- CREAR UNA TABLA 
-- INGRESAR REGISTROS
-- UPDATE Y BORRARLAS.