-- Your sql code in this file
-- NOTE: Please, don't add sentence to create database in this script file.
--       You can create database locally to test it.
--       Consider add ';' at end sentence.

CREATE TABLE employee_department (
  id character varying(10) NOT NULL,
  name character varying(30) NOT NULL,
  description character varying(40),
  CONSTRAINT "PK_department" PRIMARY KEY (id)
);

INSERT INTO employee_department VALUES('D1','I+D','Depto. de Investigacion y Desarrollo');
INSERT INTO employee_department VALUES('D2','Ventas','Depto. de Ventas');
INSERT INTO employee_department VALUES('D3','Mercadotecnia','Depto. de Mercadotecnia');
INSERT INTO employee_department VALUES('D4','Recursos Humanos','Depto. de Recursos Humanos');
INSERT INTO employee_department VALUES('D5','Contaduria','Depto. de Contaduria');
INSERT INTO employee_department VALUES('D6','Diseño','Depto. de Diseño');

CREATE TABLE employee (
  id character varying(10) NOT NULL,
  first_name character varying(20) NOT NULL,
  last_name character varying(30) NOT NULL,
  department character varying(10),
  CONSTRAINT "PK_employee" PRIMARY KEY (id),
  CONSTRAINT "FK_departmentID" FOREIGN KEY (department)
      REFERENCES employee_department (id)
);

INSERT INTO employee VALUES('E1','Ricardo','Escobedo','D1');
INSERT INTO employee VALUES('E2','Diego','Garcia','D3');
INSERT INTO employee VALUES('E3','Jose','Martinez','D4');
INSERT INTO employee VALUES('E4','Ernesto','Gonzalez','D6');


-- ...
