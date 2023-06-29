-- Active: 1685036735684@@127.0.0.1@3306@estadisticas

CREATE TABLE productos ( nombre VARCHAR (50), precio DECIMAL(10, 2));

INSERT INTO
    productos (nombre, precio)
VALUES (
        'Producto A',
        -15.755664655145
    );

INSERT INTO
    productos (nombre, precio)
VALUES (
        'Producto B',
        -19.755664655145
    );

SELECT nombre, ABS(precio),ROUND(precio, 2) FROM productos;

----------------------------------------------------------------

CREATE TABLE tareas (nombre VARCHAR (50), fecha_limite DATE);

INSERT INTO
    tareas (nombre, fecha_limite)
VALUES ('Tarea A', '2023-06-30');

INSERT INTO
    tareas (nombre, fecha_limite)
VALUES ('Tarea B', '2023-07-15');

SELECT
    nombre,
    fecha_limite,
    DATE_FORMAT(fecha_limite, '%d-%m-%Y')
FROM tareas;

-- Active: 1685036735684@@127.0.0.1@3306@supermarket

CREATE TABLE
    empleado (
        nombre VARCHAR (50),
        salario DECIMAL (10, 2)
    );

INSERT INTO empleado (nombre, salario) VALUES ('Juan Perez', NULL );

INSERT INTO
    empleado (nombre, salario)
VALUES ('Pedro Lopez', 3000.00);

SELECT nombre , IFNULL (salario, 'No esta disponible') FROM empleado;

SELECT COUNT(*) as total_empleados FROM empleado;