/*Criação da tabela dos médicos*/
CREATE TABLE Medico (
    id_medico INTEGER PRIMARY KEY AUTOINCREMENT,
    nome TEXT NOT NULL,
    especialidade TEXT NOT NULL
);

/*Criação da tabela dos pacientes*/
CREATE TABLE Paciente (
    id_paciente INTEGER PRIMARY KEY AUTOINCREMENT,
    nome TEXT NOT NULL,
    telefone TEXT NOT NULL
);

/*Criação da tabela das consultas*/
CREATE TABLE Consulta (
    id_consulta INTEGER PRIMARY KEY AUTOINCREMENT,
    id_medico INTEGER NOT NULL,
    id_paciente INTEGER NOT NULL,
    data_consulta DATE NOT NULL,
    horario_consulta TEXT NOT NULL,
    FOREIGN KEY (id_medico) REFERENCES Medico(id_medico),
    FOREIGN KEY (id_paciente) REFERENCES Paciente(id_paciente)
);

/*Criação da tabela dos prontuarios*/
CREATE TABLE Prontuario (
    id_prontuario INTEGER PRIMARY KEY AUTOINCREMENT,
    id_consulta INTEGER NOT NULL,
    descricao TEXT NOT NULL,
    FOREIGN KEY (id_consulta) REFERENCES Consulta(id_consulta)
);