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

