import psycopg2
import pytest

@pytest.fixture(scope="module")
def db_connection():
    conn = psycopg2.connect(
        dbname="test_db",
        user="postgres",
        password="postgres",
        host="localhost",
        port="5432"
    )
    yield conn
    conn.close()

def test_alumnos_insertados(db_connection):
    with db_connection.cursor() as cur:
        cur.execute("SELECT COUNT(*) FROM student;")
        count = cur.fetchone()[0]
        assert count == 10

def test_maestros_insertados(db_connection):
    with db_connection.cursor() as cur:
        cur.execute("SELECT COUNT(*) FROM teacher;")
        count = cur.fetchone()[0]
        assert count == 10

def test_grupos_insertados(db_connection):
    with db_connection.cursor() as cur:
        cur.execute("SELECT COUNT(*) FROM course;")
        count = cur.fetchone()[0]
        assert count == 10

def test_inscripciones_insertados(db_connection):
    with db_connection.cursor() as cur:
        cur.execute("SELECT COUNT(*) FROM inscripcion;")
        count = cur.fetchone()[0]
        assert count == 10  

def test_asistencia_insertados(db_connection):
    with db_connection.cursor() as cur:
        cur.execute("SELECT COUNT(*) FROM asistencia;")
        count = cur.fetchone()[0]
        assert count == 10  

def test_structure(db_connection):
    sql = ''' 
            SELECT tablename FROM pg_tables 
            WHERE tablename 
            IN ('student', 'teacher', 'course',
            'inscripcion', 'asistencia');
          '''
    expected_tables = {'student', 'teacher',
                       'course', 'inscripcion',
                       'asistencia'}
    with db_connection.cursor() as cur:
        cur.execute(sql)
        result_tables = {row[0] for row in cur.fetchall()}
        msg = f'''Expected tables {expected_tables},
              but found {result_tables}'''
        assert result_tables == expected_tables, msg
                
        
