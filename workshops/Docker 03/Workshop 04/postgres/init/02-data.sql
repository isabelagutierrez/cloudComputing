INSERT INTO academia.teachers (name, email) VALUES
    ('María Pérez', 'maria.perez@example.com'),
    ('Jorge Ramírez', 'jorge.ramirez@example.com');

INSERT INTO academia.students (name, email) VALUES
    ('Ana Torres', 'ana.torres@example.com'),
    ('Carlos Ruiz', 'carlos.ruiz@example.com'),
    ('Laura Gómez', 'laura.gomez@example.com');

INSERT INTO academia.courses (name, credits, teacher_id) VALUES
    ('Bases de Datos', 3, 1),
    ('Redes', 3, 2),
    ('Ingeniería de Software', 4, 1);

INSERT INTO academia.enrollments (student_id, course_id) VALUES
    (1, 1), (1, 2),
    (2, 1), (2, 3),
    (3, 2), (3, 3);