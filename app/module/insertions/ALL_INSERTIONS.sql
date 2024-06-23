-- use for workbench
USE HOSPITAL;
-- INSERT TIPOS_DE_DOCUMENTOS
INSERT INTO TIPOS_DE_DOCUMENTOS (ID_tipoDeDocumento, Nombre)
VALUES
    (1, 'DNI'),
    (2, 'Pasaporte'),
    (3, 'Carnet de identidad'),
    (4, 'Licencia de conducir'),
    (5, 'Tarjeta de residencia'),
    (6, 'Cédula de identidad'),
    (7, 'Documento nacional de identidad'),
    (8, 'Carnet de extranjería'),
    (9, 'Visa'),
    (10, 'Registro civil'),
    (11, 'Pasaporte diplomático'),
    (12, 'Carnet estudiantil'),
    (13, 'Registro militar'),
    (14, 'Carnet de sanidad'),
    (15, 'Carnet de vacunación'),
    (16, 'Pasaporte oficial'),
    (17, 'Documento migratorio'),
    (18, 'Carnet de trabajo'),
    (19, 'Pasaporte oficial diplomático'),
    (20, 'Certificado de nacimiento');

-- INSERT CONTACTOS_DE_EMERGENCIA
INSERT INTO CONTACTOS_DE_EMERGENCIA (Nombre, Telefono)
VALUES
    ('Juan Pérez', '+1234567890'),
    ('María González', '+1987654321'),
    ('Pedro Ramirez', '+1122334455'),
    ('Laura Martínez', '+1567890123'),
    ('Carlos Sánchez', '+1346798520'),
    ('Ana López', '+1765432987'),
    ('Jorge Rodríguez', '+1876543210'),
    ('Sofía Fernandez', '+1654321879'),
    ('Miguel Torres', '+1987654321'),
    ('Elena Gómez', '+1543216789'),
    ('Diego García', '+1908765432'),
    ('Patricia Ruiz', '+1123456789'),
    ('Ricardo Vargas', '+1789456123'),
    ('Alejandra Pérez', '+1345678901'),
    ('Mario Hernández', '+1876543210'),
    ('Luisa Ramírez', '+1987654321'),
    ('Andrés Gutiérrez', '+1765432987'),
    ('Fabiola Díaz', '+1654321879'),
    ('Roberto Castro', '+1987654321'),
    ('Claudia Morales', '+1876543210');

-- INSERT PACIENTES
INSERT INTO PACIENTES (Nombre, Apellidos, TelefonoDeContacto, NumeroDeDocumento, ID_tipoDeDocumento_FK, ID_contactoDeEmergencia_FK)
VALUES
    ('María', 'González', '+1234567890', '12345678901', 1, 1),-- ID 1       -- Tipo de documento 'DNI', Contacto de emergencia 'Juan Pérez'
    ('Pedro', 'Ramírez', '+1987654321', '23456789012', 2, 2),-- ID 2       -- Tipo de documento 'Pasaporte', Contacto de emergencia 'María González'
    ('Laura', 'Martínez', '+1122334455', '34567890123', 3, 3),-- ID 3      -- Tipo de documento 'Carnet de identidad', Contacto de emergencia 'Pedro Ramírez'
    ('Carlos', 'Sánchez', '+1567890123', '45678901234', 4, 4),-- ID 4      -- Tipo de documento 'Licencia de conducir', Contacto de emergencia 'Laura Martínez'
    ('Ana', 'López', '+1346798520', '56789012345', 5, 5),-- ID 5           -- Tipo de documento 'Tarjeta de residencia', Contacto de emergencia 'Carlos Sánchez'
    ('Jorge', 'Rodríguez', '+1765432987', '67890123456', 6, 6),-- ID 6     -- Tipo de documento 'Cédula de identidad', Contacto de emergencia 'Ana López'
    ('Sofía', 'Fernández', '+1876543210', '78901234567', 7, 7),-- ID 7     -- Tipo de documento 'Documento nacional de identidad', Contacto de emergencia 'Jorge Rodríguez'
    ('Miguel', 'Torres', '+1654321879', '89012345678', 8, 8),-- ID 8       -- Tipo de documento 'Carnet de extranjería', Contacto de emergencia 'Sofía Fernández'
    ('Elena', 'Gómez', '+1987654321', '90123456789', 9, 9),-- ID 9         -- Tipo de documento 'Visa', Contacto de emergencia 'Miguel Torres'
    ('Diego', 'García', '+1543216789', '01234567890', 10, 10),-- ID 10      -- Tipo de documento 'Registro civil', Contacto de emergencia 'Elena Gómez'
    ('Patricia', 'Ruiz', '+1908765432', '98765432101', 11, 11),-- ID 11     -- Tipo de documento 'Pasaporte diplomático', Contacto de emergencia 'Diego García'
    ('Ricardo', 'Vargas', '+1123456789', '87654321012', 12, 12),-- ID 12    -- Tipo de documento 'Carnet estudiantil', Contacto de emergencia 'Patricia Ruiz'
    ('Alejandra', 'Pérez', '+1789456123', '76543210987', 13, 13),-- ID 13   -- Tipo de documento 'Registro militar', Contacto de emergencia 'Ricardo Vargas'
    ('Mario', 'Hernández', '+1345678901', '65432109876', 14, 14),-- ID 14   -- Tipo de documento 'Carnet de sanidad', Contacto de emergencia 'Alejandra Pérez'
    ('Luisa', 'Ramírez', '+1876543210', '54321098765', 15, 15),-- ID 15     -- Tipo de documento 'Carnet de vacunación', Contacto de emergencia 'Mario Hernández'
    ('Andrés', 'Gutiérrez', '+1987654321', '43210987654', 16, 16),-- ID 16  -- Tipo de documento 'Pasaporte oficial', Contacto de emergencia 'Luisa Ramírez'
    ('Fabiola', 'Díaz', '+1765432987', '32109876543', 17, 17),-- ID 17      -- Tipo de documento 'Documento migratorio', Contacto de emergencia 'Andrés Gutiérrez'
    ('Roberto', 'Castro', '+1654321879', '21098765432', 18, 18),-- ID 18    -- Tipo de documento 'Carnet de trabajo', Contacto de emergencia 'Fabiola Díaz'
    ('Claudia', 'Morales', '+1987654321', '10987654321', 19, 19),-- ID 19   -- Tipo de documento 'Pasaporte oficial diplomático', Contacto de emergencia 'Roberto Castro'
    ('Ana María', 'López', '+1876543210', '98765432109', 20, 20);-- ID 20  -- Tipo de documento 'Certificado de nacimiento', Contacto de emergencia 'Claudia Morales'

-- INSERT RAZONES_DE_INGRESO
INSERT INTO RAZONES_DE_INGRESO (Observacion, ID_paciente_FK)
VALUES
    ('Fiebre alta', 1),                 -- Paciente ID 1
    ('Fractura de pierna', 2),          -- Paciente ID 2
    ('Dolor abdominal severo', 3),       -- Paciente ID 3
    ('Problemas respiratorios', 4),     -- Paciente ID 4
    ('Intoxicación alimentaria', 5),    -- Paciente ID 5
    ('Accidente automovilístico', 6),   -- Paciente ID 6
    ('Dolor de cabeza persistente', 7), -- Paciente ID 7
    ('Herida grave en brazo', 8),       -- Paciente ID 8
    ('Infección respiratoria', 9),      -- Paciente ID 9
    ('Quemaduras de segundo grado', 10),-- Paciente ID 10
    ('Problemas cardíacos', 11),        -- Paciente ID 11
    ('Apendicitis aguda', 12),          -- Paciente ID 12
    ('Golpe en la cabeza', 13),         -- Paciente ID 13
    ('Dolor lumbar intenso', 14),       -- Paciente ID 14
    ('Dolor en el pecho', 15),          -- Paciente ID 15
    ('Convulsiones', 16),               -- Paciente ID 16
    ('Accidente doméstico', 17),        -- Paciente ID 17
    ('Hemorragia interna', 18),         -- Paciente ID 18
    ('Problemas digestivos', 19),       -- Paciente ID 19
    ('Picadura de insecto grave', 20);  -- Paciente ID 20

-- INSERT ALERGIAS
INSERT INTO ALERGIAS (NombreDeAlergia, TipoDeAlergia) VALUES
    ('Polen', 'Respiratoria'),
    ('Mariscos', 'Alimentaria'),
    ('Penicilina', 'Medicamentosa'),
    ('Nueces', 'Alimentaria'),
    ('Polvo', 'Respiratoria'),
    ('Abejas', 'Insectos'),
    ('Ácaros', 'Respiratoria'),
    ('Lácteos', 'Alimentaria'),
    ('Eritromicina', 'Medicamentosa'),
    ('Cacao', 'Alimentaria'),
    ('Soya', 'Alimentaria'),
    ('Cacahuetes', 'Alimentaria'),
    ('Ácido acetilsalicílico', 'Medicamentosa'),
    ('Gatos', 'Animales'),
    ('Perros', 'Animales'),
    ('Moldes', 'Respiratoria'),
    ('Polvo de cereales', 'Respiratoria'),
    ('Drogas antibióticas', 'Medicamentosa'),
    ('Metamizol', 'Medicamentosa'),
    ('Algas', 'Alimentaria');

-- INSERT PACIENTES_ALERGIAS
-- Asociación de alergias a los pacientes según la información proporcionada

-- María González
INSERT INTO PACIENTES_ALERGIAS (ID_paciente_FK, ID_alergia_FK)
VALUES
    (1, 1),     -- Polen (Respiratoria)
    (1, 5),     -- Polvo (Respiratoria)
    (1, 13);    -- Gatos (Animales)

-- Pedro Ramírez
INSERT INTO PACIENTES_ALERGIAS (ID_paciente_FK, ID_alergia_FK)
VALUES
    (2, 3),     -- Penicilina (Medicamentosa)
    (2, 12),    -- Ácido acetilsalicílico (Medicamentosa)
    (2, 17);    -- Moldes (Respiratoria)

-- Laura Martínez
INSERT INTO PACIENTES_ALERGIAS (ID_paciente_FK, ID_alergia_FK)
VALUES
    (3, 2),     -- Mariscos (Alimentaria)
    (3, 8),     -- Lácteos (Alimentaria)
    (3, 18);    -- Polvo de cereales (Respiratoria)

-- Carlos Sánchez
INSERT INTO PACIENTES_ALERGIAS (ID_paciente_FK, ID_alergia_FK)
VALUES
    (4, 4),    -- Nueces (Alimentaria)
    (4, 10),   -- Soya (Alimentaria)
    (4, 15);   -- Perros (Animales)

-- Ana López
INSERT INTO PACIENTES_ALERGIAS (ID_paciente_FK, ID_alergia_FK)
VALUES
    (5, 6),    -- Abejas (Insectos)
    (5, 7),    -- Ácaros (Respiratoria)
    (5, 9);    -- Eritromicina (Medicamentosa)

-- Jorge Rodríguez
INSERT INTO PACIENTES_ALERGIAS (ID_paciente_FK, ID_alergia_FK)
VALUES
    (6, 1),    -- Polen (Respiratoria)
    (6, 11),   -- Cacahuetes (Alimentaria)
    (6, 16);   -- Drogas antibióticas (Medicamentosa)

-- Sofía Fernández
INSERT INTO PACIENTES_ALERGIAS (ID_paciente_FK, ID_alergia_FK)
VALUES
    (7, 2),    -- Mariscos (Alimentaria)
    (7, 5),    -- Polvo (Respiratoria)
    (7, 19);   -- Metamizol (Medicamentosa)

-- Miguel Torres
INSERT INTO PACIENTES_ALERGIAS (ID_paciente_FK, ID_alergia_FK)
VALUES
    (8, 7),    -- Ácaros (Respiratoria)
    (8, 9),    -- Eritromicina (Medicamentosa)
    (8, 18);   -- Polvo de cereales (Respiratoria)

-- Elena Gómez
INSERT INTO PACIENTES_ALERGIAS (ID_paciente_FK, ID_alergia_FK)
VALUES
    (9, 3),    -- Penicilina (Medicamentosa)
    (9, 6),    -- Abejas (Insectos)
    (9, 12);   -- Ácido acetilsalicílico (Medicamentosa)

-- Diego García
INSERT INTO PACIENTES_ALERGIAS (ID_paciente_FK, ID_alergia_FK)
VALUES
    (10, 4),    -- Nueces (Alimentaria)
    (10, 13),   -- Gatos (Animales)
    (10, 16);   -- Drogas antibióticas (Medicamentosa)

-- Patricia Ruiz
INSERT INTO PACIENTES_ALERGIAS (ID_paciente_FK, ID_alergia_FK)
VALUES
    (11, 10),   -- Soya (Alimentaria)
    (11, 11),   -- Cacahuetes (Alimentaria)
    (11, 20);   -- Algas (Alimentaria)

-- Ricardo Vargas
INSERT INTO PACIENTES_ALERGIAS (ID_paciente_FK, ID_alergia_FK)
VALUES
    (12, 5),    -- Polvo (Respiratoria)
    (12, 7),    -- Ácaros (Respiratoria)
    (12, 14);   -- Gatos (Animales)

-- Alejandra Pérez
INSERT INTO PACIENTES_ALERGIAS (ID_paciente_FK, ID_alergia_FK)
VALUES
    (13, 2),    -- Mariscos (Alimentaria)
    (13, 8),    -- Lácteos (Alimentaria)
    (13, 19);   -- Metamizol (Medicamentosa)

-- Mario Hernández
INSERT INTO PACIENTES_ALERGIAS (ID_paciente_FK, ID_alergia_FK)
VALUES
    (14, 1),    -- Polen (Respiratoria)
    (14, 3),    -- Penicilina (Medicamentosa)
    (14, 6);    -- Abejas (Insectos)

-- INSERT GENEROS
INSERT INTO GENEROS (Nombre) VALUES
    ('Masculino'),
    ('Femenino'),
    ('No binario'),
    ('Prefiero no decirlo');

-- INSERT TITULOS
INSERT INTO TITULOS (Nombre) VALUES
    ('Médico General'),
    ('Especialista en Cardiología'),
    ('Especialista en Pediatría'),
    ('Cirujano General'),
    ('Ginecólogo'),
    ('Oftalmólogo'),
    ('Dermatólogo'),
    ('Psiquiatra'),
    ('Neurólogo'),
    ('Oncólogo'),
    ('Anestesiólogo'),
    ('Traumatólogo'),
    ('Endocrinólogo'),
    ('Urologo'),
    ('Radiólogo'),
    ('Geriatra');

-- INSERT CONTRATOS
INSERT INTO CONTRATOS (FechaDeInicioDeContrato, Salario) VALUES
    ('2023-01-15', 5500000.00),   -- Ejemplo de contrato para enfermera con salario $5,500,000 COP
    ('2022-08-20', 6200000.00),   -- Ejemplo de contrato para médico con salario $6,200,000 COP
    ('2022-10-01', 4800000.00),   -- Ejemplo de contrato para enfermera con salario $4,800,000 COP
    ('2023-03-05', 7200000.00);   -- Ejemplo de contrato para médico con salario $7,200,000 COP

-- INSERT SALAS_UCI
INSERT INTO `SALAS_UCI` (`ID_salaUCI`)
VALUES
    (1),
    (2),
    (3),
    (4),
    (5),
    (6),
    (7),
    (8),
    (9),
    (10),
    (11),
    (12),
    (13),
    (14),
    (15),
    (16),
    (17),
    (18),
    (19),
    (20);

-- INSERT CAMAS
INSERT INTO CAMAS (Estado, ID_paciente_FK, ID_salaUCI_FK)
VALUES
    ('Disponible',NULL,1),    
    ('Ocupado',2,2),    -- Pedro Ramírez
    ('Disponible',NULL,3),    -- Laura Martínez
    ('Ocupado',4,4),    -- Carlos Sánchez
    ('Disponible',NULL,5),    -- Ana López
    ('Ocupado',6,6),    -- Jorge Rodríguez
    ('Disponible',NULL,7),    -- Sofía Fernández
    ('Ocupado',8,8),    -- Miguel Torres
    ('Disponible',NULL,9),    -- Elena Gómez
    ('Ocupado',10,10),   -- Diego García
    ('Disponible',NULL,11),   -- Patricia Ruiz
    ('Ocupado',12,12),   -- Ricardo Vargas
    ('Disponible',NULL,13),   -- Alejandra Pérez
    ('Ocupado',14,14),   -- Mario Hernández
    ('Disponible',NULL,15),   -- Luisa Ramírez
    ('Ocupado',16,16),   -- Andrés Gutiérrez
    ('Disponible',NULL,17),   -- Fabiola Díaz
    ('Ocupado',18,18),   -- Roberto Castro
    ('Disponible',NULL,19),   -- Claudia Morales
    ('Ocupado',20,20),   -- Ana María López
    ('Disponible', 1, 1), -- María González
    ('Ocupado', 2, 2); -- Pedro Ramírez

-- INSERT ENFERMERAS
INSERT INTO ENFERMERAS (Nombre, Apellidos, TelefonoDeContacto, FechaDeNacimiento, NumeroDeDocumento, AniosDeExperiencia, ID_genero_FK, ID_tipoDeDocumento_FK, ID_contrato_FK, `ID_salaUCI_FK`)
VALUES
    ('María', 'López', '+123456789', '1980-05-15', '12345678901', '5 años y 3 meses', 2, 1, 1, 1),   -- Tipo de documento 'DNI', Contrato 1
    ('Pedro', 'García', '+198765432', '1982-10-25', '23456789012', '3 años y 7 meses', 1, 2, 3, 2),  -- Tipo de documento 'Pasaporte', Contrato 3
    ('Laura', 'Martínez', '+112233445', '1985-03-18', '34567890123', '2 años y 10 meses', 2, 3, 4, 3),  -- Tipo de documento 'Carnet de identidad', Contrato 4
    ('Carlos', 'Sánchez', '+156789012', '1988-07-02', '45678901234', '1 año y 11 meses', 1, 4, 2, 4),  -- Tipo de documento 'Licencia de conducir', Contrato 2
    ('Ana', 'Rodríguez', '+134679852', '1990-12-30', '56789012345', '4 años y 1 mes', 2, 5, 1, 5),   -- Tipo de documento 'Tarjeta de residencia', Contrato 1
    ('Jorge', 'Pérez', '+176543298', '1987-08-12', '67890123456', '6 años y 2 meses', 1, 6, 3, 6),   -- Tipo de documento 'Cédula de identidad', Contrato 3
    ('Sofía', 'Fernández', '+187654321', '1984-04-05', '78901234567', '3 años y 9 meses', 2, 7, 4, 7),   -- Tipo de documento 'Documento nacional de identidad', Contrato 4
    ('Miguel', 'Torres', '+165432187', '1983-01-20', '89012345678', '7 años y 5 meses', 1, 8, 2, 8),   -- Tipo de documento 'Carnet de extranjería', Contrato 2
    ('Elena', 'Gómez', '+198765432', '1989-09-08', '90123456789', '2 años y 3 meses', 2, 9, 1, 9),   -- Tipo de documento 'Visa', Contrato 1
    ('Diego', 'Ramírez', '+154321678', '1992-06-17', '01234567890', '5 años y 8 meses', 1, 10, 3, 10),   -- Tipo de documento 'Registro civil', Contrato 3
    ('Patricia', 'López', '+190876543', '1986-11-22', '98765432101', '4 años y 4 meses', 2, 11, 4, 11),   -- Tipo de documento 'Pasaporte diplomático', Contrato 4
    ('Ricardo', 'Martín', '+112345678', '1991-04-03', '87654321012', '3 años y 2 meses', 1, 12, 2, 12),   -- Tipo de documento 'Carnet estudiantil', Contrato 2
    ('Alejandra', 'Pérez', '+178945612', '1981-02-14', '76543210987', '6 años y 11 meses', 2, 13, 1, 13),   -- Tipo de documento 'Registro militar', Contrato 1
    ('Mario', 'Gutiérrez', '+134567890', '1980-07-28', '65432109876', '1 año y 6 meses', 1, 14, 3, 14),   -- Tipo de documento 'Carnet de sanidad', Contrato 3
    ('Luisa', 'Hernández', '+187654321', '1987-03-10', '54321098765', '8 años y 3 meses', 2, 15, 4, 15),   -- Tipo de documento 'Carnet de vacunación', Contrato 4
    ('Andrés', 'Díaz', '+198765432', '1982-09-05', '43210987654', '2 años y 7 meses', 1, 16, 2, 16),   -- Tipo de documento 'Pasaporte oficial', Contrato 2
    ('Fabiola', 'García', '+176543298', '1984-12-12', '32109876543', '4 años y 9 meses', 2, 17, 1, 17),   -- Tipo de documento 'Documento migratorio', Contrato 1
    ('Roberto', 'Castro', '+165432187', '1983-06-25', '21098765432', '5 años y 1 mes', 1, 18, 3, 18),   -- Tipo de documento 'Carnet de trabajo', Contrato 3
    ('Claudia', 'Morales', '+198765432', '1989-05-14', '10987654321', '3 años y 5 meses', 2, 19, 4, 19),   -- Tipo de documento 'Pasaporte oficial diplomático', Contrato 4
    ('Ana María', 'Gómez', '+187654321', '1986-08-03', '98765432109', '7 años y 10 meses', 2, 20, 1, 20);   -- Tipo de documento 'Certificado de nacimiento', Contrato 1

-- INSERT MEDICOS
INSERT INTO MEDICOS (Nombre, Apellidos, TelefonoDeContacto, FechaDeNacimiento, NumeroDeDocumento, ID_titulo_FK, ID_genero_FK, ID_tipoDeDocumento_FK, ID_contrato_FK, ID_salaUCI_FK)
VALUES
    ('Juan', 'Pérez', '+123456789', '1975-03-10', '12345678901', 1, 1, 2, 2, 1),/*ID 1*/
    ('María', 'González', '+198765432', '1980-07-15', '23456789012', 2, 2, 3, 3, 2),/*ID 2*/
    ('Pedro', 'Ramírez', '+112233445', '1982-09-20', '34567890123', 3, 1, 4, 4, 3),/*ID 3*/
    ('Laura', 'Martínez', '+156789012', '1985-05-05', '45678901234', 4, 2, 5, 1, 4),/*ID 4*/
    ('Carlos', 'Sánchez', '+134679852', '1978-11-30', '56789012345', 5, 1, 6, 2, 5),/*ID 5*/
    ('Ana', 'López', '+176543298', '1987-04-25', '67890123456', 6, 2, 7, 3, 6),/*ID 6*/
    ('Jorge', 'Rodríguez', '+187654321', '1983-12-12', '78901234567', 7, 1, 8, 4, 7),/*ID 7*/
    ('Sofía', 'Fernández', '+165432187', '1989-08-08', '89012345678', 8, 2, 9, 1, 8),/*ID 8*/
    ('Miguel', 'Torres', '+198765432', '1976-06-18', '90123456789', 9, 1, 10, 2, 9),/*ID 9*/
    ('Elena', 'Gómez', '+154321678', '1981-02-03', '01234567890', 10, 2, 11, 3, 10),/*ID 10*/
    ('Diego', 'García', '+190876543', '1979-10-01', '98765432101', 11, 1, 12, 4, 11),/*ID 11*/
    ('Patricia', 'Ruiz', '+112345678', '1984-07-28', '87654321012', 12, 2, 13, 1, 12),/*ID 12*/
    ('Ricardo', 'Vargas', '+178945612', '1986-03-15', '76543210987', 13, 1, 14, 2, 13),/*ID 13*/
    ('Alejandra', 'Pérez', '+134567890', '1988-09-05', '65432109876', 14, 2, 15, 3, 14),/*ID 14*/
    ('Mario', 'Hernández', '+187654321', '1980-04-10', '54321098765', 15, 1, 16, 4, 15),/*ID 15*/
    ('Luisa', 'Ramírez', '+198765432', '1977-01-22', '43210987654', 16, 2, 17, 1, 16),/*ID 16*/
    ('Andrés', 'Gutiérrez', '+176543298', '1982-11-17', '32109876543', 13, 1, 18, 2, 17),/*ID 17*/
    ('Fabiola', 'Díaz', '+165432187', '1983-08-14', '21098765432', 12, 2, 19, 3, 18),/*ID 18*/
    ('Roberto', 'Castro', '+198765432', '1978-05-09', '10987654321', 10, 1, 20, 4, 19),/*ID 19*/
    ('Claudia', 'Morales', '+187654321', '1985-12-30', '98765432109', 9, 2, 1, 1, 20),/*ID 20*/
    ('Samuel', 'Cordoba', '+573113369669', '2006-10-09', '71272381891', 9, 1, 1, 1, 20);/*ID 21*/

-- INSERT SALIDAS
-- Paciente María González
INSERT INTO SALIDAS (Motivo, Fecha, TiempoDeEstadia, ID_medico_FK, ID_enfermera_FK, ID_paciente_FK)
VALUES
    ('Alta médica', '2023-06-10', '7 días', 1, 1, 1);  -- Juan Pérez fue el médico y María López la enfermera

-- Paciente Pedro Ramírez
INSERT INTO SALIDAS (Motivo, Fecha, TiempoDeEstadia, ID_medico_FK, ID_enfermera_FK, ID_paciente_FK)
VALUES
    ('Traslado a otra institución', '2023-06-12', '5 días', 2, 2, 2);  -- María González fue el médico y Pedro García la enfermera

-- Paciente Laura Martínez
INSERT INTO SALIDAS (Motivo, Fecha, TiempoDeEstadia, ID_medico_FK, ID_enfermera_FK, ID_paciente_FK)
VALUES
    ('Alta voluntaria', '2023-06-15', '3 días', 3, 3, 3);  -- Pedro Ramírez fue el médico y Laura Martínez la enfermera

-- Paciente Carlos Sánchez
INSERT INTO SALIDAS (Motivo, Fecha, TiempoDeEstadia, ID_medico_FK, ID_enfermera_FK, ID_paciente_FK)
VALUES
    ('Fallecimiento', '2023-06-17', '10 días', 4, 4, 4);  -- Laura Martínez fue el médico y Carlos Sánchez la enfermera

-- Paciente Ana López
INSERT INTO SALIDAS (Motivo, Fecha, TiempoDeEstadia, ID_medico_FK, ID_enfermera_FK, ID_paciente_FK)
VALUES
    ('Traslado a otra unidad', '2023-06-20', '2 días', 5, 5, 5);  -- Carlos Sánchez fue el médico y Ana Rodríguez la enfermera

-- Paciente Jorge Rodríguez
INSERT INTO SALIDAS (Motivo, Fecha, TiempoDeEstadia, ID_medico_FK, ID_enfermera_FK, ID_paciente_FK)
VALUES
    ('Alta médica', '2023-06-22', '5 días', 6, 6, 6);  -- Ana López fue el médico y Jorge Pérez la enfermera

-- Paciente Sofía Fernández
INSERT INTO SALIDAS (Motivo, Fecha, TiempoDeEstadia, ID_medico_FK, ID_enfermera_FK, ID_paciente_FK)
VALUES
    ('Fallecimiento', '2023-06-25', '8 días', 7, 7, 7);  -- Jorge Rodríguez fue el médico y Sofía Fernández la enfermera

-- Paciente Miguel Torres
INSERT INTO SALIDAS (Motivo, Fecha, TiempoDeEstadia, ID_medico_FK, ID_enfermera_FK, ID_paciente_FK)
VALUES
    ('Alta voluntaria', '2023-06-28', '4 días', 8, 8, 8);  -- Sofía Fernández fue el médico y Miguel Torres la enfermera

-- Paciente Elena Gómez
INSERT INTO SALIDAS (Motivo, Fecha, TiempoDeEstadia, ID_medico_FK, ID_enfermera_FK, ID_paciente_FK)
VALUES
    ('Traslado a otra institución', '2023-07-01', '6 días', 9, 9, 9);  -- Miguel Torres fue el médico y Elena Gómez la enfermera

-- Paciente Diego Ramírez
INSERT INTO SALIDAS (Motivo, Fecha, TiempoDeEstadia, ID_medico_FK, ID_enfermera_FK, ID_paciente_FK)
VALUES
    ('Alta médica', '2023-07-03', '3 días', 10, 10, 10);  -- Elena Gómez fue el médico y Diego Ramírez la enfermera

-- Paciente Patricia Ruiz
INSERT INTO SALIDAS (Motivo, Fecha, TiempoDeEstadia, ID_medico_FK, ID_enfermera_FK, ID_paciente_FK)
VALUES
    ('Fallecimiento', '2023-07-06', '9 días', 11, 11, 11);  -- Diego Ramírez fue el médico y Patricia López la enfermera

-- Paciente Ricardo Vargas
INSERT INTO SALIDAS (Motivo, Fecha, TiempoDeEstadia, ID_medico_FK, ID_enfermera_FK, ID_paciente_FK)
VALUES
    ('Traslado a otra unidad', '2023-07-08', '5 días', 12, 12, 12);  -- Patricia Ruiz fue el médico y Ricardo Martín la enfermera

-- Paciente Alejandra Pérez
INSERT INTO SALIDAS (Motivo, Fecha, TiempoDeEstadia, ID_medico_FK, ID_enfermera_FK, ID_paciente_FK)
VALUES
    ('Alta voluntaria', '2023-07-11', '4 días', 13, 13, 13);  -- Ricardo Vargas fue el médico y Alejandra Pérez la enfermera

-- Paciente Mario Hernández
INSERT INTO SALIDAS (Motivo, Fecha, TiempoDeEstadia, ID_medico_FK, ID_enfermera_FK, ID_paciente_FK)
VALUES
    ('Alta médica', '2023-07-14', '6 días', 14, 14, 14);  -- Alejandra Pérez fue el médico y Mario Gutiérrez la enfermera

-- Paciente Luisa Ramírez
INSERT INTO SALIDAS (Motivo, Fecha, TiempoDeEstadia, ID_medico_FK, ID_enfermera_FK, ID_paciente_FK)
VALUES
    ('Traslado a otra institución', '2023-07-16', '7 días', 15, 15, 15);  -- Mario Hernández fue el médico y Luisa Hernández la enfermera

-- Paciente Andrés Gutiérrez
INSERT INTO SALIDAS (Motivo, Fecha, TiempoDeEstadia, ID_medico_FK, ID_enfermera_FK, ID_paciente_FK)
VALUES
    ('Fallecimiento', '2023-07-19', '10 días', 16, 16, 16);  -- Luisa Ramírez fue el médico y Andrés Díaz la enfermera

-- Paciente Fabiola Díaz
INSERT INTO SALIDAS (Motivo, Fecha, TiempoDeEstadia, ID_medico_FK, ID_enfermera_FK, ID_paciente_FK)
VALUES
    ('Traslado a otra unidad', '2023-07-22', '8 días', 17, 17, 17);  -- Andrés Gutiérrez fue el médico y Fabiola García la enfermera

-- Paciente Roberto Castro
INSERT INTO SALIDAS (Motivo, Fecha, TiempoDeEstadia, ID_medico_FK, ID_enfermera_FK, ID_paciente_FK)
VALUES
    ('Alta voluntaria', '2023-07-25', '5 días', 18, 18, 18);  -- Fabiola Díaz fue el médico y Roberto Castro la enfermera

-- Paciente Claudia Morales
INSERT INTO SALIDAS (Motivo, Fecha, TiempoDeEstadia, ID_medico_FK, ID_enfermera_FK, ID_paciente_FK)
VALUES
    ('Alta médica', '2023-07-28', '3 días', 19, 19, 19);  -- Roberto Castro fue el médico y Claudia Morales la enfermera

-- Paciente Ana María Gómez
INSERT INTO SALIDAS (Motivo, Fecha, TiempoDeEstadia, ID_medico_FK, ID_enfermera_FK, ID_paciente_FK)
VALUES
    ('Fallecimiento', '2023-07-31', '12 días', 20, 20, 20);  -- Claudia Morales fue el médico y Ana María López la enfermera

-- INSERT EXAMENES

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
-- INSERT DIAGNOSTICOS
INSERT INTO DIAGNOSTICOS (ID_paciente_FK, ID_medico_FK)
VALUES
    (1, 1),    -- Diagnóstico del paciente 1 realizado por el médico 1
    (2, 2),    -- Diagnóstico del paciente 2 realizado por el médico 2
    (3, 3),    -- Diagnóstico del paciente 3 realizado por el médico 3
    (4, 4),    -- Diagnóstico del paciente 4 realizado por el médico 4
    (5, 5),    -- Diagnóstico del paciente 5 realizado por el médico 5
    (6, 6),    -- Diagnóstico del paciente 6 realizado por el médico 6
    (7, 7),    -- Diagnóstico del paciente 7 realizado por el médico 7
    (8, 8),    -- Diagnóstico del paciente 8 realizado por el médico 8
    (9, 9),    -- Diagnóstico del paciente 9 realizado por el médico 9
    (10, 10),  -- Diagnóstico del paciente 10 realizado por el médico 10
    (11, 11),  -- Diagnóstico del paciente 11 realizado por el médico 11
    (12, 12),  -- Diagnóstico del paciente 12 realizado por el médico 12
    (13, 13),  -- Diagnóstico del paciente 13 realizado por el médico 13
    (14, 14),  -- Diagnóstico del paciente 14 realizado por el médico 14
    (15, 15),  -- Diagnóstico del paciente 15 realizado por el médico 15
    (16, 16),  -- Diagnóstico del paciente 16 realizado por el médico 16
    (17, 17),  -- Diagnóstico del paciente 17 realizado por el médico 17
    (18, 18),  -- Diagnóstico del paciente 18 realizado por el médico 18
    (19, 19),  -- Diagnóstico del paciente 19 realizado por el médico 19
    (20, 20);  -- Diagnóstico del paciente 20 realizado por el médico 20

-- INSERT RESULTADOS
INSERT INTO RESULTADOS (Observacion, ID_examen_FK, ID_medico_FK, ID_diagnostico_FK)
VALUES
    ('Resultado normal', 1, 1, 1),    -- Resultado del examen 1 realizado por el médico 1 para el diagnóstico 1
    ('Presión arterial alta', 2, 2, 2),    -- Resultado del examen 2 realizado por el médico 2 para el diagnóstico 2
    ('Nivel de glucosa elevado', 3, 3, 3),    -- Resultado del examen 3 realizado por el médico 3 para el diagnóstico 3
    ('Hemoglobina baja', 4, 4, 4),    -- Resultado del examen 4 realizado por el médico 4 para el diagnóstico 4
    ('Colesterol alto', 5, 5, 5),    -- Resultado del examen 5 realizado por el médico 5 para el diagnóstico 5
    ('Electrocardiograma normal', 6, 6, 6),    -- Resultado del examen 6 realizado por el médico 6 para el diagnóstico 6
    ('Rayos X sin anomalías', 7, 7, 7),    -- Resultado del examen 7 realizado por el médico 7 para el diagnóstico 7
    ('Tomografía computarizada normal', 8, 8, 8),    -- Resultado del examen 8 realizado por el médico 8 para el diagnóstico 8
    ('Resonancia magnética sin hallazgos', 9, 9, 9),    -- Resultado del examen 9 realizado por el médico 9 para el diagnóstico 9
    ('Ultrasonido normal', 10, 10, 10),    -- Resultado del examen 10 realizado por el médico 10 para el diagnóstico 10
    ('Resultado dentro de los parámetros normales', 11, 11, 11),    -- Resultado del examen 11 realizado por el médico 11 para el diagnóstico 11
    ('Presión ocular elevada', 12, 12, 12),    -- Resultado del examen 12 realizado por el médico 12 para el diagnóstico 12
    ('Electroencefalograma normal', 13, 13, 13),    -- Resultado del examen 13 realizado por el médico 13 para el diagnóstico 13
    ('Radiografía de tórax sin alteraciones', 14, 14, 14),    -- Resultado del examen 14 realizado por el médico 14 para el diagnóstico 14
    ('Prueba de esfuerzo normal', 15, 15, 15),    -- Resultado del examen 15 realizado por el médico 15 para el diagnóstico 15
    ('Biopsia negativa', 16, 16, 16),    -- Resultado del examen 16 realizado por el médico 16 para el diagnóstico 16
    ('Cultivo bacteriano positivo', 17, 17, 17),    -- Resultado del examen 17 realizado por el médico 17 para el diagnóstico 17
    ('PCR elevado', 18, 18, 18),    -- Resultado del examen 18 realizado por el médico 18 para el diagnóstico 18
    ('Antígeno prostático específico normal', 19, 19, 19),    -- Resultado del examen 19 realizado por el médico 19 para el diagnóstico 19
    ('Examen de sangre sin hallazgos', 20, 20, 20);    -- Resultado del examen 20 realizado por el médico 20 para el diagnóstico 20

-- INSERT MEDICAMENTOS
INSERT INTO MEDICAMENTOS (Nombre, Dosis, ID_enfermera_FK)
VALUES
    ('Paracetamol', '500mg/8horas', 1),      -- Administrado por la enfermera 1
    ('Ibuprofeno', '400mg/12horas', 2),      -- Administrado por la enfermera 2
    ('Amoxicilina', '250mg/6horas', 3),      -- Administrado por la enfermera 3
    ('Omeprazol', '20mg/24horas', 4),        -- Administrado por la enfermera 4
    ('Loratadina', '10mg/24horas', 5),       -- Administrado por la enfermera 5
    ('Atorvastatina', '40mg/24horas', 6),    -- Administrado por la enfermera 6
    ('Metformina', '850mg/12horas', 7),      -- Administrado por la enfermera 7
    ('Losartan', '50mg/24horas', 8),         -- Administrado por la enfermera 8
    ('Insulina', '10UI/24horas', 9),         -- Administrado por la enfermera 9
    ('Warfarina', '5mg/24horas', 10),        -- Administrado por la enfermera 10
    ('Prednisona', '5mg/24horas', 11),       -- Administrado por la enfermera 11
    ('Aspirina', '100mg/24horas', 12),       -- Administrado por la enfermera 12
    ('Diazepam', '5mg/8horas', 13),          -- Administrado por la enfermera 13
    ('Ciprofloxacino', '500mg/12horas', 14), -- Administrado por la enfermera 14
    ('Tramadol', '50mg/6horas', 15),         -- Administrado por la enfermera 15
    ('Sertralina', '50mg/24horas', 16),      -- Administrado por la enfermera 16
    ('Clonazepam', '0.5mg/8horas', 17),      -- Administrado por la enfermera 17
    ('Levotiroxina', '100mcg/24horas', 18),  -- Administrado por la enfermera 18
    ('Metoprolol', '50mg/12horas', 19),      -- Administrado por la enfermera 19
    ('Acetaminofén', '325mg/6horas', 20);    -- Administrado por la enfermera 20

-- INSERT MEDICAMENTOS DIAGNOSTICOS
INSERT INTO MEDICAMENTOS_DIAGNOSTICOS (ID_diagnostico_FK, ID_codigo_FK)
VALUES
    (1, 1),   -- Diagnóstico 1, Medicamento Paracetamol
    (1, 2),   -- Diagnóstico 1, Medicamento Ibuprofeno
    (2, 3),   -- Diagnóstico 2, Medicamento Amoxicilina
    (2, 4),   -- Diagnóstico 2, Medicamento Omeprazol
    (3, 5),   -- Diagnóstico 3, Medicamento Loratadina
    (3, 6),   -- Diagnóstico 3, Medicamento Atorvastatina
    (4, 7),   -- Diagnóstico 4, Medicamento Metformina
    (4, 8),   -- Diagnóstico 4, Medicamento Losartan
    (5, 9),   -- Diagnóstico 5, Medicamento Insulina
    (5, 10),  -- Diagnóstico 5, Medicamento Warfarina
    (6, 11),  -- Diagnóstico 6, Medicamento Prednisona
    (6, 12),  -- Diagnóstico 6, Medicamento Aspirina
    (7, 13),  -- Diagnóstico 7, Medicamento Diazepam
    (7, 14),  -- Diagnóstico 7, Medicamento Ciprofloxacino
    (8, 15),  -- Diagnóstico 8, Medicamento Tramadol
    (8, 16),  -- Diagnóstico 8, Medicamento Sertralina
    (9, 17),  -- Diagnóstico 9, Medicamento Clonazepam
    (9, 18),  -- Diagnóstico 9, Medicamento Levotiroxina
    (10, 19), -- Diagnóstico 10, Medicamento Metoprolol
    (10, 20); -- Diagnóstico 10, Medicamento Acetaminofén
