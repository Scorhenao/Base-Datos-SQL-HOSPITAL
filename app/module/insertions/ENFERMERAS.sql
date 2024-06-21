-- Insertar datos en la tabla ENFERMERAS
INSERT INTO ENFERMERAS (Nombre, Apellidos, TelefonoDeContacto, FechaDeNacimiento, NumeroDeDocumento, AniosDeExperiencia, ID_genero_FK, ID_tipoDeDocumento_FK, ID_contrato_FK)
VALUES
    ('María', 'López', '+123456789', '1980-05-15', '12345678901', '5 años y 3 meses', 2, 1, 1),   -- Tipo de documento 'DNI', Contrato 1
    ('Pedro', 'García', '+198765432', '1982-10-25', '23456789012', '3 años y 7 meses', 1, 2, 3),  -- Tipo de documento 'Pasaporte', Contrato 3
    ('Laura', 'Martínez', '+112233445', '1985-03-18', '34567890123', '2 años y 10 meses', 2, 3, 4),  -- Tipo de documento 'Carnet de identidad', Contrato 4
    ('Carlos', 'Sánchez', '+156789012', '1988-07-02', '45678901234', '1 año y 11 meses', 1, 4, 2),  -- Tipo de documento 'Licencia de conducir', Contrato 2
    ('Ana', 'Rodríguez', '+134679852', '1990-12-30', '56789012345', '4 años y 1 mes', 2, 5, 1),   -- Tipo de documento 'Tarjeta de residencia', Contrato 1
    ('Jorge', 'Pérez', '+176543298', '1987-08-12', '67890123456', '6 años y 2 meses', 1, 6, 3),   -- Tipo de documento 'Cédula de identidad', Contrato 3
    ('Sofía', 'Fernández', '+187654321', '1984-04-05', '78901234567', '3 años y 9 meses', 2, 7, 4),   -- Tipo de documento 'Documento nacional de identidad', Contrato 4
    ('Miguel', 'Torres', '+165432187', '1983-01-20', '89012345678', '7 años y 5 meses', 1, 8, 2),   -- Tipo de documento 'Carnet de extranjería', Contrato 2
    ('Elena', 'Gómez', '+198765432', '1989-09-08', '90123456789', '2 años y 3 meses', 2, 9, 1),   -- Tipo de documento 'Visa', Contrato 1
    ('Diego', 'Ramírez', '+154321678', '1992-06-17', '01234567890', '5 años y 8 meses', 1, 10, 3),   -- Tipo de documento 'Registro civil', Contrato 3
    ('Patricia', 'López', '+190876543', '1986-11-22', '98765432101', '4 años y 4 meses', 2, 11, 4),   -- Tipo de documento 'Pasaporte diplomático', Contrato 4
    ('Ricardo', 'Martín', '+112345678', '1991-04-03', '87654321012', '3 años y 2 meses', 1, 12, 2),   -- Tipo de documento 'Carnet estudiantil', Contrato 2
    ('Alejandra', 'Pérez', '+178945612', '1981-02-14', '76543210987', '6 años y 11 meses', 2, 13, 1),   -- Tipo de documento 'Registro militar', Contrato 1
    ('Mario', 'Gutiérrez', '+134567890', '1980-07-28', '65432109876', '1 año y 6 meses', 1, 14, 3),   -- Tipo de documento 'Carnet de sanidad', Contrato 3
    ('Luisa', 'Hernández', '+187654321', '1987-03-10', '54321098765', '8 años y 3 meses', 2, 15, 4),   -- Tipo de documento 'Carnet de vacunación', Contrato 4
    ('Andrés', 'Díaz', '+198765432', '1982-09-05', '43210987654', '2 años y 7 meses', 1, 16, 2),   -- Tipo de documento 'Pasaporte oficial', Contrato 2
    ('Fabiola', 'García', '+176543298', '1984-12-12', '32109876543', '4 años y 9 meses', 2, 17, 1),   -- Tipo de documento 'Documento migratorio', Contrato 1
    ('Roberto', 'Castro', '+165432187', '1983-06-25', '21098765432', '5 años y 1 mes', 1, 18, 3),   -- Tipo de documento 'Carnet de trabajo', Contrato 3
    ('Claudia', 'Morales', '+198765432', '1989-05-14', '10987654321', '3 años y 5 meses', 2, 19, 4),   -- Tipo de documento 'Pasaporte oficial diplomático', Contrato 4
    ('Ana María', 'Gómez', '+187654321', '1986-08-03', '98765432109', '7 años y 10 meses', 2, 20, 1);   -- Tipo de documento 'Certificado de nacimiento', Contrato 1
