CREATE TABLE STUDENT (
  matricula INTEGER PRIMARY KEY,
  name VARCHAR(50) NOT NULL
);

CREATE TABLE TEACHER(
  id_teacher SERIAL PRIMARY KEY, 
  name VARCHAR(50) NOT NULL, 
  matricula VARCHAR(50) NOT NULL, 
  departamento VARCHAR(50) NOT NULL 
);

CREATE TABLE COURSE(
  periodo VARCHAR(20) NOT NULL, 
  clave VARCHAR(20) NOT NULL, 
  name VARCHAR(50) NOT NULL, 
  horario VARCHAR(20) NOT NULL, 
  id_teacher INTEGER NOT NULL, 
  PRIMARY KEY (periodo, clave), 
  FOREIGN KEY (id_teacher) REFERENCES TEACHER(id_teacher) 
    ON DELETE RESTRICT                
    ON UPDATE CASCADE
); 

CREATE TABLE INSCRIPCION (
  id_inscripcion SERIAL PRIMARY KEY, 
  id_student INTEGER NOT NULL, 
  periodo VARCHAR(20) NOT NULL, 
  clave VARCHAR(20) NOT NULL, 
  FOREIGN KEY (id_student) REFERENCES STUDENT(matricula)
    ON DELETE CASCADE       
    ON UPDATE CASCADE, 
  FOREIGN KEY (periodo, clave) REFERENCES COURSE(periodo, clave)
    ON DELETE CASCADE       
    ON UPDATE CASCADE
); 

CREATE TABLE ASISTENCIA (
  id_asistencia SERIAL PRIMARY KEY, 
  matricula INTEGER NOT NULL, 
  asistencia TIMESTAMP, 
  periodo VARCHAR(20) NOT NULL, 
  clave VARCHAR(20) NOT NULL,
  FOREIGN KEY (periodo, clave) REFERENCES COURSE(periodo, clave)
    ON DELETE CASCADE       
    ON UPDATE CASCADE
); 
