CREATE TABLE
    empleados (
        id INT PRIMARY KEY,
        nombre VARCHAR (100),
        salario DECIMAL (10, 2),
        departamento_id INT
    );

INSERT INTO
    empleados (
        id,
        nombre,
        salario,
        departamento_id
    )
VALUES (1, 'John Smit', 2500.00, 1), (2, 'Jane Doe', 3000.00, 1), (
        3,
        'Michael Johnson',
        2800.00,
        2
    ), (4, 'Emily Dalton', 3200.00, 3);

CREATE TABLE
    departamentos (
        id INT PRIMARY KEY,
        nombre VARCHAR (100)
    );

INSERT INTO
    departamentos (id, nombre)
VALUES (1, 'Ventas'), (2, 'Marketing'), (3, 'Recursos Humanos');

--OPERADOR LIKE

SELECT nombre FROM empleados WHERE nombre LIKE 'J%';

SELECT nombre FROM departamentos WHERE nombre LIKE '%en%';

--INNER JOIN

SELECT
    empleados.nombre,
    departamentos.nombre AS departamentos
FROM empleados
    INNER JOIN departamentos ON empleados.departamento_id = departamento_id;

---LEFT OUTER JOIN

SELECT
    empleados.nombre,
    departamentos.nombre AS departamentos
FROM empleados
    LEFT OUTER JOIN departamentos ON empleados.departamento_id = departamento_id;

--- RIGHT OUTER JOIN

SELECT
    empleados.nombre,
    departamentos.nombre AS departamentos
FROM empleados
    RIGHT OUTER JOIN departamentos ON empleados.departamento_id = departamento_id;