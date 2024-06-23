-- Insertar datos en la tabla EXAMENES intercalando médicos y pacientes

-- Examen del paciente María González realizado por el médico Juan Pérez
INSERT INTO EXAMENES (Nombre, Fecha, ID_paciente_FK, ID_medico_FK)
VALUES
    ('Análisis de sangre (hemograma completo)
','2023-06-01', 1, 1);  -- ID_paciente 1 (María González), ID_medico 1 (Juan Pérez)

-- Examen del médico Pedro Ramìrez realizado por el médico Maria Gonzalez
INSERT INTO EXAMENES (Nombre, Fecha, ID_paciente_FK, ID_medico_FK)
VALUES
    ('Prueba de glucosa en sangre (para diabetes)
','2023-06-02', 2, 2);  -- ID_paciente 2 (Pedro Ramírez), ID_medico 2 (María González)

-- Examen del paciente Laura Martinez realizado por el médico Pedro Ramirez
INSERT INTO EXAMENES (Nombre, Fecha, ID_paciente_FK, ID_medico_FK)
VALUES
    ('Prueba de colesterol (perfil lipídico)
','2023-06-03', 3, 3);  -- ID_paciente 3 (Laura Martínez), ID_medico 3 (Pedro Ramírez)

-- Examen del paciente Carlos Sanchez realizado por el médico Laura Martinez
INSERT INTO EXAMENES (Nombre, Fecha, ID_paciente_FK, ID_medico_FK)
VALUES
    ('Prueba de función hepática
','2023-06-04', 4, 4);  -- ID_paciente 4 (Carlos Sánchez), ID_medico 4 (Laura Martínez)

-- Examen del paciente Ana Lopez realizado por el médico Carlos Sánchez
INSERT INTO EXAMENES (Nombre, Fecha, ID_paciente_FK, ID_medico_FK)
VALUES
    ('Prueba de función renal
','2023-06-05', 5, 5);  -- ID_paciente 5 (Ana López), ID_medico 5 (Carlos Sánchez)

-- Examen del paciente Jorge Rodriguez realizado por el médico Ana Lopez
INSERT INTO EXAMENES (Nombre, Fecha, ID_paciente_FK, ID_medico_FK)
VALUES
    ('Electrocardiograma (ECG)
','2023-06-06', 6, 6);  -- ID_paciente 6 (Jorge Rodríguez), ID_medico 6 (Ana López)

-- Examen del paciente Sofia Hernandez realizado por el médico Jorge Pérez
INSERT INTO EXAMENES (Nombre, Fecha, ID_paciente_FK, ID_medico_FK)
VALUES
    ('Radiografía de tórax
','2023-06-07', 7, 7);  -- ID_paciente 7 (Sofía Fernández), ID_medico 7 (Jorge Pérez)

-- Examen del paciente Miguel Torres realizado por el médico Sofía Fernández
INSERT INTO EXAMENES (Nombre, Fecha, ID_paciente_FK, ID_medico_FK)
VALUES
    ('Resonancia magnética (RM)
','2023-06-08', 8, 8);  -- ID_paciente 8 (Miguel Torres), ID_medico 8 (Sofía Fernández)

-- Examen del paciente Elena Gomez realizado por el médico Miguel Torres
INSERT INTO EXAMENES (Nombre, Fecha, ID_paciente_FK, ID_medico_FK)
VALUES
    ('Tomografía computarizada (TC)
','2023-06-09', 9, 9);  -- ID_paciente 9 (Elena Gómez), ID_medico 9 (Miguel Torres)

-- Examen del paciente Diego Ramirez realizado por el médico Elena Gómez
INSERT INTO EXAMENES (Nombre, Fecha, ID_paciente_FK, ID_medico_FK)
VALUES
    ('Ecografía abdominal
','2023-06-10', 10, 10);  -- ID_paciente 10 (Diego Ramírez), ID_medico 10 (Elena Gómez)

-- Examen del paciente Patricia Ramirez realizado por el médico Diego Ramírez
INSERT INTO EXAMENES (Nombre, Fecha, ID_paciente_FK, ID_medico_FK)
VALUES
    ('Mamografía
','2023-06-11', 11, 11);  -- ID_paciente 11 (Patricia Ruiz), ID_medico 11 (Diego Ramírez)

-- Examen del médico Ricardo Vargas realizado por el médico Patricia Ruiz
INSERT INTO EXAMENES (Nombre, Fecha, ID_paciente_FK, ID_medico_FK)
VALUES
    ('Colonoscopia
','2023-06-12', 12, 12);  -- ID_paciente 12 (Ricardo Vargas), ID_medico 12 (Patricia Ruiz)

-- Examen del paciente Alejandra Perez realizado por el médico Ricardo Martín
INSERT INTO EXAMENES (Nombre, Fecha, ID_paciente_FK, ID_medico_FK)
VALUES
    ('Prueba de Papanicolaou (PAP)
','2023-06-13', 13, 13);  -- ID_paciente 13 (Alejandra Pérez), ID_medico 13 (Ricardo Martín)

-- Examen del médico Mario Hernandez realizado por el médico Alejandra Pérez
INSERT INTO EXAMENES (Nombre, Fecha, ID_paciente_FK, ID_medico_FK)
VALUES
    ('Densitometría ósea (para osteoporosis)
','2023-06-14', 14, 14);  -- ID_paciente 14 (Mario Hernández), ID_medico 14 (Alejandra Pérez)

-- Examen del paciente Luisa Ramirez realizado por el médico Mario Hernandez
INSERT INTO EXAMENES (Nombre, Fecha, ID_paciente_FK, ID_medico_FK)
VALUES
    ('Prueba de esfuerzo (tolerancia al ejercicio)
','2023-06-15', 15, 15);  -- ID_paciente 15 (Luisa Ramírez), ID_medico 15 (Mario Hernández)

-- Examen del médico Andres Gutierrez realizado por el médico Luisa Ramirez
INSERT INTO EXAMENES (Nombre, Fecha, ID_paciente_FK, ID_medico_FK)
VALUES
    ('Endoscopia digestiva alta
','2023-06-16', 16, 16);  -- ID_paciente 16 (Andrés Gutiérrez), ID_medico 16 (Luisa Ramírez)

-- Examen del paciente Fabiola Diaz realizado por el médico Andrés Gutierrez
INSERT INTO EXAMENES (Nombre, Fecha, ID_paciente_FK, ID_medico_FK)
VALUES
    ('Prueba de función pulmonar (espirometría)
','2023-06-17', 17, 17);  -- ID_paciente 17 (Fabiola Díaz), ID_medico 17 (Andrés Gutiérrez)

-- Examen del paciente Roberto Castro realizado por el médico Fabiola Diaz
INSERT INTO EXAMENES (Nombre, Fecha, ID_paciente_FK, ID_medico_FK)
VALUES
    ('Examen de orina
','2023-06-18', 18, 18);  -- ID_paciente 18 (Roberto Castro), ID_medico 18 (Fabiola Díaz)

-- Examen del paciente Claudia Morales realizado por el médico Roberto Castro
INSERT INTO EXAMENES (Nombre, Fecha, ID_paciente_FK, ID_medico_FK)
VALUES
    ('Prueba de tiroides (TSH, T3, T4)
','2023-06-19', 19, 19);  -- ID_paciente 19 (Claudia Morales), ID_medico 19 (Roberto Castro)

-- Examen del paciente Ana Maria Gomez realizado por el médico Claudia Morales
INSERT INTO EXAMENES (Nombre, Fecha, ID_paciente_FK, ID_medico_FK)
VALUES
    ('Test de antígeno prostático específico (PSA)
','2023-06-20', 18, 20);  -- ID_paciente 20 (Ana María Gómez), ID_medico 20 (Claudia Morales)

INSERT INTO EXAMENES (Nombre, Fecha, ID_paciente_FK, ID_medico_FK)
VALUES
    ('Mamografía','2024-01-30',20,15); -- ID_paciente 20 (Ana María Gómez), ID_medico 15 (Mario Hernandez)