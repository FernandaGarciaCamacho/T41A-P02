 INSERT INTO STUDENT VALUES
    ('1001', 'Ana Torres'),
    ('1002', 'Luis Gómez'),
    ('1003', 'María López'),
    ('1004', 'Carlos Ruiz'),
    ('1005', 'Laura Méndez'),
    ('1006', 'Pedro Sánchez'),
    ('1007', 'Sofía Díaz'),
    ('1008', 'Jorge Ramírez'),
    ('1009', 'Elena Castro'),
    ('1010', 'Tomás Ortega');

    -- Insertar maestros
    INSERT INTO TEACHER(name, matricula, departamento) VALUES
    ('Mtro. Juan Pérez', 'j001', 'Programación'),
    ('Mtra. Carmen Silva', 'c001', 'Programación'),
    ('Mtro. Diego Luna', 'd001', 'Programación'),
    ('Mtra. Rosa Márquez', 'r001', 'Programación'),
    ('Mtro. Andrés Bello', 'a001', 'Programación'),
    ('Mtra. Julia Ríos', 'j002', 'Programación'),
    ('Mtro. Sergio Peña', 's001', 'Programación'),
    ('Mtra. Alicia Torres', 'a002', 'Programación'),
    ('Mtro. Iván Cordero', 'i001', 'Programación'),
    ('Mtra. Teresa León', 't001', 'Programación');

    -- Insertar grupos
    INSERT INTO COURSE VALUES
    ('20253S', 'S38A', 'Bases de Datos I', '1:00-2:00', 1),
    ('20253S', 'S38E', 'Bases de Datos I','11:00-12:00', 2),
    ('20253S', 'T41A', 'Bases de Datos II','10:00-11:00', 3),
    ('20253S', 'T48A', 'Bases de Datos II','9:00-10:00', 4),
    ('20253S', 'T43A', 'Diseño de BD','8:00-9:00', 5),
    ('20253S', 'T42A', 'Diseño de BD','2:00-3:00', 6),
    ('20253S', 'T41B', 'SQL Avanzado','3:00-4:00', 7),
    ('20253S', 'T44B', 'SQL Avanzado','4:00-6:00', 8),
    ('20253S', 'T42B', 'PostgreSQL','6:00-7:00', 9),
    ('20253S', 'T45B', 'PostgreSQL','7:00-8:00', 10);

    -- Inscripciones
    INSERT INTO INSCRIPCION (id_student, periodo, clave) VALUES
    ('1001', '20253S', 'T41A'),
    ('1002', '20253S', 'T41A'),
    ('1003', '20253S', 'S38A'),
    ('1004', '20253S', 'T41B'),
    ('1005', '20253S', 'T42A'),
    ('1006', '20253S', 'T42A'),
    ('1007', '20253S', 'T42B'),
    ('1008', '20253S', 'T42B'),
    ('1009', '20253S', 'S38E'),
    ('1010', '20253S', 'T48A');

INSERT INTO ASISTENCIA ( matricula, asistencia, periodo, clave) VALUES
    ('1001', '2025-09-01 08:00:00', '20253S', 'T41A'),
    ('1002', '2025-09-01 08:00:00', '20253S', 'T41B'),
    ('1004', '2025-09-01 10:00:00','20253S', 'T41B'),
    ('1005', '2025-09-01 12:00:00','20253S', 'T41B'),
    ('1006', '2025-09-01 12:00:00','20253S', 'T41B'),
    ('1008', '2025-09-01 14:00:00','20253S', 'T41B'),
    ('1010', '2025-09-01 16:00:00', '20253S', 'T41B');
    
INSERT INTO ASISTENCIA (matricula, periodo, clave) VALUES 
    ('1009','20253S', 'T41B'),
    ('1003', '20253S', 'T41A'),
    ('1007','20253S', 'T41B'); 
