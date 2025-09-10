SELECT g.periodo, g.clave, g.name,
           COUNT(*) FILTER (WHERE a.asistencia IS NULL) AS total_faltas
    FROM ASISTENCIA a
    JOIN COURSE g ON a.periodo = g.periodo AND a.clave = g.clave
    GROUP BY g.periodo, g.clave, g.name
    ORDER BY g.clave;
