-- Active: 1685036735684@@127.0.0.1@3306@supermarket
CREATE TABLE empleado (
    nombre VARCHAR (50),
    salario VARCHAR (100)  
);

START TRANSACTION;

INSERT INTO empleado (nombre, salario) VALUES ('Juan Perez', NULL );
INSERT INTO empleado (nombre, salario) VALUES ('Pedro Lopez', 3000.00 );

COMMIT;


START TRANSACTION;

INSERT INTO empleado (nombre, salario) VALUES ('Juan Perez', 2500.00 );
INSERT INTO empleado (nombre, salario) VALUES ('Pedro Lopez', 3000.00 );

--Ocurrio un error o se decide desacher los cambios
ROLLBACK;


--Auto-Commit
SET autocommit = 0;

SELECT * FROM empleado;