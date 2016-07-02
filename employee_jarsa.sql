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

--SQL3
INSERT INTO employee VALUES('B1','Alejandro','Gonzalez');
INSERT INTO employee VALUES('B2','Carlos','Gonzalez');
INSERT INTO employee VALUES('B3','Octavio','Aguilera');
INSERT INTO employee VALUES('B4','Samuel','Aguirre');

UPDATE employee SET boss='B1' WHERE department='D1';
UPDATE employee SET boss='B2' WHERE department='D3';
UPDATE employee SET boss='B3' WHERE department='D4';
UPDATE employee SET boss='B4' WHERE department='D6';
--SQL3

CREATE TABLE employee_hobby
(
  id character varying(10) NOT NULL,
  name character varying(25) NOT NULL,
  description character varying(50),
  CONSTRAINT "PK_hobbyID" PRIMARY KEY (id)
)

INSERT INTO employee_hobby VALUES('H1','Reading','Likes to read books');
INSERT INTO employee_hobby VALUES('H2','Sports','Practices a sport');
INSERT INTO employee_hobby VALUES('H3','Board Games','Likes to play board games');

CREATE TABLE rs_employee_hobby
(
  "employeeID" character varying(10) NOT NULL,
  "hobbyID" character varying(10) NOT NULL,
  CONSTRAINT "PK_rsEH" PRIMARY KEY ("employeeID", "hobbyID"),
  CONSTRAINT "FK_employeeID" FOREIGN KEY ("employeeID")
      REFERENCES employee (id),
  CONSTRAINT "FK_hobbyID" FOREIGN KEY ("hobbyID")
      REFERENCES employee_hobby (id)
)

INSERT INTO rs_employee_hobby VALUES('E1','H1');
INSERT INTO rs_employee_hobby VALUES('E1','H2');
INSERT INTO rs_employee_hobby VALUES('E2','H1');
INSERT INTO rs_employee_hobby VALUES('E2','H3');
INSERT INTO rs_employee_hobby VALUES('E3','H2');
INSERT INTO rs_employee_hobby VALUES('E3','H3');
INSERT INTO rs_employee_hobby VALUES('E4','H3');
INSERT INTO rs_employee_hobby VALUES('E4','H1');

-- ...
