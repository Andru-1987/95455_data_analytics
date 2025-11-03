CREATE DATABASE clase_03_dml ;

USE clase_03_dml;

CREATE TABLE categorias (
    IDCategoria INT NOT NULL IDENTITY PRIMARY KEY,
    Nombre_Categoria VARCHAR(50),
    Descripcion VARCHAR(50)
);



SELECT * FROM [categorias];