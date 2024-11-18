/*Inserir dados do médico*/
INSERT INTO Medico (nome, especialidade) VALUES ('Dr. Carlos Silva', 'Cardiologista');
INSERT INTO Medico (nome, especialidade) VALUES ('Dra. Ana Souza', 'Pediatra');

/*Inserir dados do paciente*/
INSERT INTO Paciente (nome, telefone) VALUES ('João Alves', '11987654321');
INSERT INTO Paciente (nome, telefone) VALUES ('Maria Pereira', '11976543210');

/*Inserir dados da consulta*/
INSERT INTO Consulta (id_medico, id_paciente, data_da_consulta, horario_da_consulta)
VALUES (1, 1, '2024-11-19', '11:00');
INSERT INTO Consulta (id_medico, id_paciente, data_da_consulta, horario_da_consulta)
VALUES (2, 2, '2024-12-03', '15:00');

/*Inserir dados do prontuario*/
INSERT INTO Prontuario (id_consulta, descricao)
VALUES (1, 'Paciente apresenta pressão alta e será monitorado.');
INSERT INTO Prontuario (id_consulta, descricao)
VALUES (2, 'Paciente com febre e sintomas gripais.');