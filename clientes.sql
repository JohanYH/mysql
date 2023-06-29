-- Active: 1687258977643@@127.0.0.1@3306@Usuarios

CREATE TABLE clientes (
    id INT PRIMARY KEY,
    nombre VARCHAR (100),
    ciudad VARCHAR (100),
    fecha_registro DATE
);

INSERT INTO clientes (id,nombre,ciudad,fecha_registro)
VALUES (1, 'Julian', 'Madrid', '2023-01-26'),
(2, 'Andrea', 'Florida', '2023-01-26'),
(3, 'Carlos', 'Bucaramanga', '2023-01-26'),
(4, 'Nicolas', 'Madrid', '2023-01-26');

SELECT id, nombre, ciudad, fecha_registro
FROM clientes
ORDER BY nombre ASC;

SELECT id, nombre, ciudad, fecha_registro
FROM clientes
ORDER BY ciudad ASC, fecha_registro DESC;

--ORDENA CONSIDERANDO FECHAS POSTERIORES
SELECT id, nombre, ciudad, fecha_registro
FROM clientes
WHERE fecha_registro > '2023-01-01'
ORDER BY fecha_registro ASC;

--VIEWS

CREATE VIEW vista_clientes AS
SELECT id, nombre, ciudad,fecha_registro
FROM clientes;

SELECT * FROM vista_clientes;


CREATE VIEW vista_clientes_madrid AS
SELECT id, nombre, ciudad, fecha_registro
FROM clientes
WHERE ciudad = 'Madrid';

SELECT * FROM vista_clientes_madrid;

CREATE VIEW vista_clientes_ordenados AS
SELECT id,nombre, ciudad, fecha_registro
FROM clientes
ORDER BY fecha_registro DESC;

SELECT * FROM vista_clientes_ordenados