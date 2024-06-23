- Conocer el número de pacientes que se encuentran en UCI y en cada sala.
SELECT CAMAS.ID_cama, CAMAS.Estado CAMAS.ID_paciente_FK, CAMAS.ID_salaUCI_FK/*Table where u are and table in which u wanna search*/
FROM CAMAS /*from medicos we gonna search*/
JOIN SALAS_UCI ON CAMAS.ID_salaUCI_FK = SALAS_UCI.ID_salaUCI /*Compare if the FK is the same with the ID of the real table*/
