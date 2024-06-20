/*Creating name of database*/
CREATE DATABASE HOSPITAL
    DEFAULT CHARACTER SET = 'utf8mb4';

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
    NumeroDeDocumento INT(11) NOT NULL COMMENT 'Numero de documento del paciente',
    ID_tipoDeDocumento_FK TINYINT NOT NULL COMMENT 'Foreign key de TIPOS_DE_DOCUMENTOS del paciente',
    FOREIGN KEY(ID_tipoDeDocumento_FK) REFERENCES TIPOS_DE_DOCUMENTOS(ID_tipoDeDocumento),
    ID_contactoDeEmergencia_FK INT,
    FOREIGN KEY(ID_contactoDeEmergencia_FK) REFERENCES CONTACTOS_DE_EMERGENCIA(ID_contactoDeEmergencia)
) COMMENT 'Tabla de PACIENTES';
