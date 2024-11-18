/*Consultas realizadas por médico*/
SELECT m.nome AS Medico, p.nome AS Paciente, c.data_da_consulta, c.horario_da_consulta
FROM Consulta c
JOIN Medico m ON c.id_medico = m.id_medico
JOIN Paciente p ON c.id_paciente = p.id_paciente
WHERE m.nome = 'Dr. Carlos Silva';

/*Consultas realizadas em um período específico*/
SELECT m.nome AS Medico, p.nome AS Paciente, c.data_da_consulta, c.horario_da_consulta
FROM Consulta c
JOIN Medico m ON c.id_medico = m.id_medico
JOIN Paciente p ON c.id_paciente = p.id_paciente
WHERE c.data_da_consulta BETWEEN '2024-11-17' AND '2024-12-17';

/*Prontuário completo de um paciente*/
SELECT p.nome AS Paciente, m.nome AS Medico, pr.descricao, c.data_da_consulta
FROM Prontuario pr
JOIN Consulta c ON pr.id_consulta = c.id_consulta
JOIN Paciente p ON c.id_paciente = p.id_paciente
JOIN Medico m ON c.id_medico = m.id_medico
WHERE p.nome = 'Gabriel Vinicius';