
    -- Insertar alumnos
    INSERT INTO alumnos VALUES
    ('A001', 'Ana Torres'),
    ('A002', 'Luis Gómez'),
    ('A003', 'María López'),
    ('A004', 'Carlos Ruiz'),
    ('A005', 'Laura Méndez'),
    ('A006', 'Pedro Sánchez'),
    ('A007', 'Sofía Díaz'),
    ('A008', 'Jorge Ramírez'),
    ('A009', 'Elena Castro'),
    ('A010', 'Tomás Ortega');

    -- Insertar maestros
    INSERT INTO maestros(nombre) VALUES
    ('Mtro. Juan Pérez'),
    ('Mtra. Carmen Silva'),
    ('Mtro. Diego Luna'),
    ('Mtra. Rosa Márquez'),
    ('Mtro. Andrés Bello'),
    ('Mtra. Julia Ríos'),
    ('Mtro. Sergio Peña'),
    ('Mtra. Alicia Torres'),
    ('Mtro. Iván Cordero'),
    ('Mtra. Teresa León');

    -- Insertar grupos
    INSERT INTO grupos VALUES
    ('20253S', 'T41A', 'Bases de Datos I', 1),
    ('20253S', 'T41B', 'Bases de Datos I', 2),
    ('20253S', 'T42A', 'Bases de Datos II', 3),
    ('20253S', 'T42B', 'Bases de Datos II', 4),
    ('20253S', 'T43A', 'Diseño de BD', 5),
    ('20253S', 'T43B', 'Diseño de BD', 6),
    ('20253S', 'T44A', 'SQL Avanzado', 7),
    ('20253S', 'T44B', 'SQL Avanzado', 8),
    ('20253S', 'T45A', 'PostgreSQL', 9),
    ('20253S', 'T45B', 'PostgreSQL', 10);

    -- Inscripciones
    INSERT INTO inscripciones VALUES
    ('A001', '20253S', 'T41A', '2025-08-01'),
    ('A002', '20253S', 'T41A', '2025-08-01'),
    ('A003', '20253S', 'T41B', '2025-08-01'),
    ('A004', '20253S', 'T41B', '2025-08-01'),
    ('A005', '20253S', 'T42A', '2025-08-01'),
    ('A006', '20253S', 'T42A', '2025-08-01'),
    ('A007', '20253S', 'T42B', '2025-08-01'),
    ('A008', '20253S', 'T42B', '2025-08-01'),
    ('A009', '20253S', 'T43A', '2025-08-01'),
    ('A010', '20253S', 'T43A', '2025-08-01');

    -- Asistencia (algunos ausentes)
   INSERT INTO asistencia ( matricula, asistencia, periodo, clave) VALUES
    ('1001', '2025-09-01 08:00:00', '20253S', 'T41A'),
    ('1002', '2025-09-01 08:00:00', '20253S', 'T41B'),
    ('1004', '2025-09-01 10:00:00','20253S', 'T41B'),
    ('1005', '2025-09-01 12:00:00','20253S', 'T41B'),
    ('1006', '2025-09-01 12:00:00','20253S', 'T41B'),
    ('1008', '2025-09-01 14:00:00','20253S', 'T41B'),
    ('1010', '2025-09-01 16:00:00', '20253S', 'T41B');
    
INSERT INTO asistencia (matricula, periodo, clave) VALUES 
    ('1009','20253S', 'T41B'),
    ('1003', '20253S', 'T41A'),
    ('1007','20253S', 'T41B'); 
