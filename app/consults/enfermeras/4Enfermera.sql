- Dada una sala, conocer el médico que la dirige.
SELECT SALAS_UCI.ID_salaUCI, MEDICOS.Nombre,MEDICOS.Apellidos/*Table where u are and table in which u wanna search*/
FROM SALAS_UCI
JOIN MEDICOS ON SALAS_UCI.ID_medico_FK = MEDICOS.ID_medico /*Compare if the FK is the same with the ID of the real table*/
WHERE SALAS_UCI.ID_salaUCI = 1;/*The document that that we need*/
