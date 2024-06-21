/*Creating name of database*/
CREATE DATABASE HOSPITAL
    DEFAULT CHARACTER SET = 'utf8mb4';
/*use for workbench*/
USE HOSPITAL;

/*table TIPOS_DE_DOCUMENTOS*/
CREATE TABLE TIPOS_DE_DOCUMENTOS (
    ID_tipoDeDocumento TINYINT NOT NULL PRIMARY KEY AUTO_INCREMENT COMMENT'Primary Key de TIPOS_DE_DOCUMENTOS',
    Nombre VARCHAR(50) NOT NULL COMMENT 'Nombre del tipo de documento'
) COMMENT 'Tabla de TIPOS_DE_DOCUMENTOS';

/*tale CONTACTOS_DE_EMERGENCIA */
CREATE TABLE CONTACTOS_DE_EMERGENCIA (
    ID_contactoDeEmergencia INT NOT NULL PRIMARY KEY AUTO_INCREMENT COMMENT'Primary Key de CONTACTOS_DE_EMERGENCIA',
    Nombre TEXT(50) NOT NULL COMMENT 'Nombre del contacto de emergencia',
    Telefono VARCHAR(16) NOT NULL COMMENT 'Telefono de contacto de emergencia'
) COMMENT 'Tabla de CONTACTOS_DE_EMERGENCIA';


/*table PACIENTES*/
CREATE TABLE PACIENTES (  
    ID_paciente INT NOT NULL PRIMARY KEY AUTO_INCREMENT COMMENT 'Primary Key de PACIENTES',
    Nombre TEXT(50) NOT NULL COMMENT 'Nombre de paciente',
    Apellidos TEXT(50) NOT NULL COMMENT 'Apellidos de paciente',
    TelefonoDeContacto VARCHAR(16) NOT NULL COMMENT 'Telefono de paciente', 
    NumeroDeDocumento VARCHAR(11) NOT NULL COMMENT 'Numero de documento del paciente',
    ID_tipoDeDocumento_FK TINYINT NOT NULL COMMENT 'Foreign key de TIPOS_DE_DOCUMENTOS del paciente',
    FOREIGN KEY(ID_tipoDeDocumento_FK) REFERENCES TIPOS_DE_DOCUMENTOS(ID_tipoDeDocumento),
    ID_contactoDeEmergencia_FK INT,
    FOREIGN KEY(ID_contactoDeEmergencia_FK) REFERENCES CONTACTOS_DE_EMERGENCIA(ID_contactoDeEmergencia)
) COMMENT 'Tabla de PACIENTES';

/*table RAZONES_DE_INGRESO*/
CREATE TABLE RAZONES_DE_INGRESO (
    ID_razonDeIngreso INT NOT NULL PRIMARY KEY AUTO_INCREMENT COMMENT 'Primary Key de RAZONES_DE_INGRESO',
    Observacion VARCHAR(250) COMMENT 'Observacion del medico deacuerdo a la razon de ingreso del paciente',
    ID_paciente_FK INT NOT NULL COMMENT 'Foreign key del paciente',
    FOREIGN KEY(ID_paciente_FK) REFERENCES PACIENTES(ID_paciente)
)COMMENT 'tabla de RAZONES_DE_INGRESO';

/*table ALERGIAS*/
CREATE TABLE ALERGIAS (
    ID_alergia INT NOT NULL PRIMARY KEY AUTO_INCREMENT COMMENT 'Primary Key de ALERGIAS',
    NombreDeAlergia TEXT(50) NOT NULL COMMENT 'Nombre de la alergia',
    TipoDeAlergia TEXT(50) NOT NULL COMMENT 'Tipo de la alergia'
)COMMENT 'tabla de ALERGIAS';

/*table PACIENTES_ALERGIAS*/
CREATE TABLE PACIENTES_ALERGIAS (
    ID_paciente_FK INT NOT NULL COMMENT 'Foreign key del paciente',
    FOREIGN KEY(ID_paciente_FK) REFERENCES PACIENTES(ID_paciente),
    ID_alergia_FK INT NOT NULL COMMENT 'Foreign key de ALERGIAS',
    FOREIGN KEY(ID_alergia_FK) REFERENCES ALERGIAS(ID_alergia)
)COMMENT 'tabla de PACIENTES_ALERGIAS';

/*table GENEROS*/
CREATE TABLE GENEROS (
    ID_genero INT NOT NULL PRIMARY KEY AUTO_INCREMENT COMMENT 'Primary Key de GENEROS',
    Nombre TEXT(50) NOT NULL COMMENT 'Nombre de genero'
) COMMENT 'tabla de GENEROS';

/*table TITULOS*/
CREATE TABLE TITULOS (
    ID_titulo INT NOT NULL PRIMARY KEY AUTO_INCREMENT COMMENT 'Primary Key de TITULOS',
    Nombre TEXT(50) NOT NULL COMMENT 'Nombre de TITULOS'
)COMMENT 'tabla de TITULOS';

/*table CONTRATOS*/
CREATE TABLE CONTRATOS (
    ID_contrato INT NOT NULL PRIMARY KEY AUTO_INCREMENT COMMENT 'Primary Key de CONTRATOS',
    FechaDeInicioDeContrato DATE NOT NULL COMMENT 'Fecha de inicio de CONTRATOS',
    Salario FLOAT(30) NOT NULL COMMENT 'Salario de CONTRATOS' 
)COMMENT 'tabla de CONTRATOS';

/*table CAMAS*/
CREATE TABLE CAMAS (
    ID_cama INT NOT NULL PRIMARY KEY AUTO_INCREMENT COMMENT 'Primary Key de CAMAS',
    ID_paciente_FK INT NOT NULL,
    FOREIGN KEY(ID_paciente_FK) REFERENCES PACIENTES(ID_paciente)
)COMMENT 'tabla de CAMAS';

/*table ENFERMERAS*/
CREATE TABLE ENFERMERAS (
    ID_enfermera INT NOT NULL PRIMARY KEY AUTO_INCREMENT COMMENT 'Primary Key de ENFERMERAS',
    Nombre TEXT(50) NOT NULL COMMENT 'Nombre de la enfermera',
    Apellidos TEXT(50) NOT NULL COMMENT 'Apellidos de la enfermera',
    TelefonoDeContacto VARCHAR(16) NOT NULL COMMENT 'Telefono de la enfermera',
    FechaDeNacimiento DATE NOT NULL COMMENT 'Fecha de nacimiento de la enfermera',
    NumeroDeDocumento VARCHAR(11) NOT NULL COMMENT 'Numero de documento de la enfermera',
    AniosDeExperiencia VARCHAR(40) DEFAULT '0' COMMENT 'Años de experiencia de la enfermera',
    ID_genero_FK INT NOT NULL COMMENT 'Foreign key de GENEROS de la enfermera',
    FOREIGN KEY(ID_genero_FK) REFERENCES GENEROS(ID_genero),
    ID_tipoDeDocumento_FK TINYINT COMMENT 'Foreign key de TIPOS_DE_DOCUMENTOS de la enfermera',
    FOREIGN KEY (ID_tipoDeDocumento_FK) REFERENCES TIPOS_DE_DOCUMENTOS(ID_tipoDeDocumento),
    ID_contrato_FK INT,
    FOREIGN KEY (ID_contrato_FK) REFERENCES CONTRATOS(ID_contrato)
) COMMENT 'tabla de ENFERMERAS';

/*table MEDICOS*/
CREATE TABLE MEDICOS (
    ID_medico INT NOT NULL PRIMARY KEY AUTO_INCREMENT COMMENT 'Primary Key de MEDICOS',
    Nombre TEXT(50) NOT NULL COMMENT 'Nombre de la medico',
    Apellidos TEXT(50) NOT NULL COMMENT 'Apellidos de la medico',
    TelefonoDeContacto VARCHAR(16) NOT NULL COMMENT 'Telefono de la medico',
    FechaDeNacimiento DATE NOT NULL COMMENT 'Fecha de nacimiento de la medico',
    NumeroDeDocumento VARCHAR(11) NOT NULL COMMENT 'Numero de documento de la medico',
    ID_titulo_FK INT NOT NULL COMMENT 'Titulo del medico',
    FOREIGN KEY(ID_titulo_FK) REFERENCES TITULOS(ID_titulo),
    ID_genero_FK INT NOT NULL COMMENT 'Foreign key de GENEROS de la medico',
    FOREIGN KEY(ID_genero_FK) REFERENCES GENEROS(ID_genero),
    ID_tipoDeDocumento_FK TINYINT NOT NULL COMMENT 'Foreign key de TIPOS_DE_DOCUMENTOS de la medico',
    FOREIGN KEY (ID_tipoDeDocumento_FK) REFERENCES TIPOS_DE_DOCUMENTOS(ID_tipoDeDocumento),
    ID_contrato_FK INT,
    FOREIGN KEY (ID_contrato_FK) REFERENCES CONTRATOS(ID_contrato)
)COMMENT 'tabla de MEDICOS';

/*table SALAS_UCI*/
CREATE TABLE SALAS_UCI (
    ID_salaUCI INT NOT NULL PRIMARY KEY AUTO_INCREMENT COMMENT 'Primary Key de SALAS_UCI',
    ID_enfermera_FK INT NOT NULL,
    FOREIGN KEY(ID_enfermera_FK) REFERENCES ENFERMERAS(ID_enfermera),
    ID_medico_FK INT NOT NULL,
    FOREIGN KEY(ID_medico_FK) REFERENCES MEDICOS(ID_medico)
)COMMENT 'tabla de SALAS_UCI';

/*add another camp in ENFERMERAS with the foreign key of SALAS_UCI*/
ALTER TABLE ENFERMERAS
ADD COLUMN ID_salaUCI_FK INT NOT NULL COMMENT 'Foreign key de SALAS_UCI de la enfermera',
ADD CONSTRAINT fk_salaUCI
    FOREIGN KEY (ID_salaUCI_FK) REFERENCES SALAS_UCI(ID_salaUCI);

ALTER TABLE CAMAS
ADD COLUMN ID_salaUCI_FK INT NOT NULL COMMENT 'Foreign key de SALAS_UCI de la cama',
    FOREIGN KEY(ID_salaUCI_FK) REFERENCES SALAS_UCI(ID_salaUCI),