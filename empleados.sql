CREATE TABLE empleados (
    empleado_id INT PRIMARY KEY,
    empleado_name VARCHAR (50),
    email VARCHAR (100) UNIQUE --Evita duplicados para que los valores sean Unicos
);

INSERT INTO empleados (empleado_id, empleado_name, email)
VALUES
(1, 'Johan', "johan@gmail.com");

INSERT INTO empleados (empleado_id, empleado_name, email)
VALUES
(2, 'Kevin', "kevin@gmail.com");

INSERT INTO empleados (empleado_id, empleado_name, email)
VALUES
(3, 'Nicolas', "nicolas@gmail.com");

SELECT * FROM empleados;

INSERT INTO empleados (empleado_id, empleado_name, email)
VALUES
(4, 'Sebastian', "johan@gmail.com");


--ROLLBACK
START TRANSACTION;

INSERT INTO empleados (nombre, salario) VALUES ('Juan Perez', 2500.00 );
INSERT INTO empleados (nombre, salario) VALUES ('Pedro Lopez', 3000.00 );

COMMIT;