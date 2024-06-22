/*Insertar TIPOS_DE_DOCUMENTOS*/
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

/*Insertar CONTACTOS_DE_EMERGENCIA*/
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

/*Insertar PACIENTES*/
INSERT INTO PACIENTES (Nombre, Apellidos, TelefonoDeContacto, NumeroDeDocumento, ID_tipoDeDocumento_FK, ID_contactoDeEmergencia_FK)
VALUES
    ('María', 'González', '+1234567890', '12345678901', 1, 1),/*ID 1*/       -- Tipo de documento 'DNI', Contacto de emergencia 'Juan Pérez'
    ('Pedro', 'Ramírez', '+1987654321', '23456789012', 2, 2),/*ID 2*/       -- Tipo de documento 'Pasaporte', Contacto de emergencia 'María González'
    ('Laura', 'Martínez', '+1122334455', '34567890123', 3, 3),/*ID 3*/      -- Tipo de documento 'Carnet de identidad', Contacto de emergencia 'Pedro Ramírez'
    ('Carlos', 'Sánchez', '+1567890123', '45678901234', 4, 4),/*ID 4*/      -- Tipo de documento 'Licencia de conducir', Contacto de emergencia 'Laura Martínez'
    ('Ana', 'López', '+1346798520', '56789012345', 5, 5),/*ID 5*/           -- Tipo de documento 'Tarjeta de residencia', Contacto de emergencia 'Carlos Sánchez'
    ('Jorge', 'Rodríguez', '+1765432987', '67890123456', 6, 6),/*ID 6*/     -- Tipo de documento 'Cédula de identidad', Contacto de emergencia 'Ana López'
    ('Sofía', 'Fernández', '+1876543210', '78901234567', 7, 7),/*ID 7*/     -- Tipo de documento 'Documento nacional de identidad', Contacto de emergencia 'Jorge Rodríguez'
    ('Miguel', 'Torres', '+1654321879', '89012345678', 8, 8),/*ID 8*/       -- Tipo de documento 'Carnet de extranjería', Contacto de emergencia 'Sofía Fernández'
    ('Elena', 'Gómez', '+1987654321', '90123456789', 9, 9),/*ID 9*/         -- Tipo de documento 'Visa', Contacto de emergencia 'Miguel Torres'
    ('Diego', 'García', '+1543216789', '01234567890', 10, 10),/*ID 10*/      -- Tipo de documento 'Registro civil', Contacto de emergencia 'Elena Gómez'
    ('Patricia', 'Ruiz', '+1908765432', '98765432101', 11, 11),/*ID 11*/     -- Tipo de documento 'Pasaporte diplomático', Contacto de emergencia 'Diego García'
    ('Ricardo', 'Vargas', '+1123456789', '87654321012', 12, 12),/*ID 12*/    -- Tipo de documento 'Carnet estudiantil', Contacto de emergencia 'Patricia Ruiz'
    ('Alejandra', 'Pérez', '+1789456123', '76543210987', 13, 13),/*ID 13*/   -- Tipo de documento 'Registro militar', Contacto de emergencia 'Ricardo Vargas'
    ('Mario', 'Hernández', '+1345678901', '65432109876', 14, 14),/*ID 14*/   -- Tipo de documento 'Carnet de sanidad', Contacto de emergencia 'Alejandra Pérez'
    ('Luisa', 'Ramírez', '+1876543210', '54321098765', 15, 15),/*ID 15*/     -- Tipo de documento 'Carnet de vacunación', Contacto de emergencia 'Mario Hernández'
    ('Andrés', 'Gutiérrez', '+1987654321', '43210987654', 16, 16),/*ID 16*/  -- Tipo de documento 'Pasaporte oficial', Contacto de emergencia 'Luisa Ramírez'
    ('Fabiola', 'Díaz', '+1765432987', '32109876543', 17, 17),/*ID 17*/      -- Tipo de documento 'Documento migratorio', Contacto de emergencia 'Andrés Gutiérrez'
    ('Roberto', 'Castro', '+1654321879', '21098765432', 18, 18),/*ID 18*/    -- Tipo de documento 'Carnet de trabajo', Contacto de emergencia 'Fabiola Díaz'
    ('Claudia', 'Morales', '+1987654321', '10987654321', 19, 19),/*ID 19*/   -- Tipo de documento 'Pasaporte oficial diplomático', Contacto de emergencia 'Roberto Castro'
    ('Ana María', 'López', '+1876543210', '98765432109', 20, 20);/*ID 20*/  -- Tipo de documento 'Certificado de nacimiento', Contacto de emergencia 'Claudia Morales'

/*Insertar RAZONES_DE_INGRESO*/
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

/*Insertar ALERGIAS*/
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
