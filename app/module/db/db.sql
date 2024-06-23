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

/*table SALAS_UCI*/
CREATE TABLE SALAS_UCI (
    ID_salaUCI INT NOT NULL PRIMARY KEY AUTO_INCREMENT COMMENT 'Primary Key de SALAS_UCI'
)COMMENT 'tabla de SALAS_UCI';


/*table CAMAS*/
CREATE TABLE CAMAS (
    ID_cama INT NOT NULL PRIMARY KEY AUTO_INCREMENT COMMENT 'Primary Key de CAMAS',
    Estado TEXT(20) NOT NULL,
    ID_paciente_FK INT,
    FOREIGN KEY(ID_paciente_FK) REFERENCES PACIENTES(ID_paciente),
    ID_salaUCI_FK INT NOT NULL,
    FOREIGN KEY(ID_salaUCI_FK) REFERENCES SALAS_UCI(ID_salaUCI)
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
    FOREIGN KEY (ID_contrato_FK) REFERENCES CONTRATOS(ID_contrato),
    ID_salaUCI_FK INT NOT NULL DEFAULT '0' COMMENT 'Foreign key de SALAS_UCI de la enfermera',
    FOREIGN KEY(ID_salaUCI_FK) REFERENCES SALAS_UCI(ID_salaUCI)
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
    FOREIGN KEY (ID_contrato_FK) REFERENCES CONTRATOS(ID_contrato),
    ID_salaUCI_FK INT NOT NULL DEFAULT '0' COMMENT 'Foreign key de SALAS_UCI de la enfermera',
    FOREIGN KEY(ID_salaUCI_FK) REFERENCES SALAS_UCI(ID_salaUCI)
)COMMENT 'tabla de MEDICOS';


/*table SALIDAS*/
CREATE TABLE SALIDAS (
    ID_salida INT NOT NULL PRIMARY KEY AUTO_INCREMENT COMMENT 'Primary Key de SALIDAS',
    Motivo VARCHAR(250) NOT NULL COMMENT 'Motivo de salida',
    Fecha DATE NOT NULL COMMENT 'Fecha de salida',
    TiempoDeEstadia VARCHAR(40) NOT NULL COMMENT 'Tiempo de estadia del paciente antes de la salida',
    ID_medico_FK INT COMMENT 'Foreign key de MEDICOS',
    FOREIGN KEY(ID_medico_FK) REFERENCES MEDICOS(ID_medico),
    ID_enfermera_FK INT COMMENT 'Foreign key de ENFERMERAS',
    FOREIGN KEY (ID_enfermera_FK) REFERENCES ENFERMERAS(ID_enfermera),
    ID_paciente_FK INT COMMENT 'Foreign key de PACIENTES',
    FOREIGN KEY (ID_paciente_FK) REFERENCES PACIENTES(ID_paciente)
)COMMENT 'tabla de SALIDAS';

/*table EXAMENES*/
CREATE TABLE EXAMENES (
    ID_examen INT NOT NULL PRIMARY KEY AUTO_INCREMENT COMMENT 'Primary Key de EXAMENES',
    Nombre TEXT(50) NOT NULL,
    Fecha DATE NOT NULL COMMENT 'Fecha del examen',
    ID_paciente_FK INT COMMENT 'Foreign key de PACIENTES',
    FOREIGN KEY (ID_paciente_FK) REFERENCES PACIENTES(ID_paciente),
    ID_medico_FK INT COMMENT 'Foreign key MEDICOS',
    FOREIGN KEY (ID_medico_FK) REFERENCES MEDICOS(ID_medico)
)COMMENT 'tabla de EXAMENES';

/*table de DIAGNOSTICOS*/
CREATE TABLE DIAGNOSTICOS (
    ID_diagnostico INT NOT NULL PRIMARY KEY AUTO_INCREMENT COMMENT 'Primary Key de DIAGNOSTICOS',
    ID_paciente_FK INT NOT NULL COMMENT 'Foreign key de PACIENTES',
    FOREIGN KEY(ID_paciente_FK) REFERENCES PACIENTES(ID_paciente),
    ID_medico_FK INT NOT NULL COMMENT 'Foreign key de MEDICOS',
    FOREIGN KEY(ID_medico_FK) REFERENCES MEDICOS(ID_medico)
)COMMENT 'tabla de DIAGNOSTICOS';

/*table RESULTADOS*/
CREATE TABLE RESULTADOS (
    ID_resultado INT NOT NULL PRIMARY KEY AUTO_INCREMENT COMMENT 'Primary Key de RESULTADOS',
    Observacion VARCHAR(250) COMMENT 'Observacion opcional del medico segun el resultado',
    ID_examen_FK INT NOT NULL COMMENT 'Foreign key de EXAMENES',
    FOREIGN KEY (ID_examen_FK) REFERENCES EXAMENES(ID_examen),
    ID_medico_FK INT NOT NULL COMMENT 'Foreign key de MEDICOS',
    FOREIGN KEY(ID_medico_FK) REFERENCES MEDICOS(ID_medico),
    ID_diagnostico_FK INT COMMENT 'Foreign key de DIAGNOSTICOS',
    FOREIGN KEY(ID_diagnostico_FK) REFERENCES DIAGNOSTICOS(ID_diagnostico)
)COMMENT 'tabla de RESULTADOS';

/*table de MEDICAMENTOS*/
CREATE TABLE MEDICAMENTOS (
    ID_codigo INT NOT NULL PRIMARY KEY AUTO_INCREMENT COMMENT 'Primary Key de MEDICAMENTOS',
    Nombre TEXT(100) NOT NULL COMMENT 'Nombre del medicamento',
    Dosis VARCHAR(14) NOT NULL COMMENT 'Dosis del medicamento',
    ID_enfermera_FK INT NOT NULL COMMENT 'Foreign key de ENFERMERAS',
    FOREIGN KEY(ID_enfermera_FK) REFERENCES ENFERMERAS(ID_enfermera)
)COMMENT 'tabla de MEDICAMENTOS';

/*table de MEDICAMENTOS_DIAGNOSTICOS*/
CREATE TABLE MEDICAMENTOS_DIAGNOSTICOS (
    ID_diagnostico_FK INT NOT NULL COMMENT 'Foreign key de DIAGNOSTICOS',
    FOREIGN KEY(ID_diagnostico_FK) REFERENCES DIAGNOSTICOS(ID_diagnostico),
    ID_codigo_FK INT NOT NULL COMMENT 'Foreign key del codigo de un medicamento',
    FOREIGN KEY(ID_codigo_FK) REFERENCES MEDICAMENTOS(ID_codigo)
)COMMENT 'tabla de MEDICAMENTOS_DIAGNOSTICOS';