-- Active: 1687258977643@@127.0.0.1@3306@estadisticas
CREATE Table estudiantes(
    estudiante_id INT PRIMARY KEY,
    estudiante_name VARCHAR (50),
    edad INT CHECK (edad >= 18)
);

INSERT INTO estudiantes (estudiante_id, estudiante_name, edad)
VALUES (1, 'Julian', 20);

INSERT INTO estudiantes (estudiante_id, estudiante_name, edad)
VALUES (2, 'Camilo', 18);

INSERT INTO estudiantes (estudiante_id, estudiante_name, edad)
VALUES (3, 'Nicolas', 22);

SELECT * FROM estudiantes;


INSERT INTO estudiantes (estudiante_id, estudiante_name, edad)
VALUES (4, 'Julio', 16);