/*Criação da tabela dos clientes*/
CREATE TABLE Cliente (
    id_cliente INTEGER PRIMARY KEY AUTOINCREMENT,
    nome TEXT NOT NULL,
    email TEXT NOT NULL
);

/*Criação da tabela dos colaboradores*/
CREATE TABLE Colaborador (
    id_colaborador INTEGER PRIMARY KEY AUTOINCREMENT,
    nome TEXT NOT NULL,
    cargo TEXT NOT NULL
);

/*Criação da tabela dos projetos*/
CREATE TABLE Projeto (
    id_projeto INTEGER PRIMARY KEY AUTOINCREMENT,
    nome TEXT NOT NULL,
    descricao TEXT NOT NULL,
    id_cliente INTEGER NOT NULL,
    data_de_inicio DATE NOT NULL,
    data_final DATE NOT NULL,
    FOREIGN KEY (id_cliente) REFERENCES Cliente(id_cliente)
);

/*Criação da tabela das tarefas*/
CREATE TABLE Tarefa (
    id_tarefa INTEGER PRIMARY KEY AUTOINCREMENT,
    nome TEXT NOT NULL,
    status TEXT NOT NULL CHECK (status IN ('não iniciado', 'em andamento', 'concluído')),
    id_projeto INTEGER NOT NULL,
    FOREIGN KEY (id_projeto) REFERENCES Projeto(id_projeto)
);

/*Criação da tabela de relacionamento entre tarefas e colaboradores*/
CREATE TABLE Tarefa_Colaborador (
    id_tarefa INTEGER NOT NULL,
    id_colaborador INTEGER NOT NULL,
    PRIMARY KEY (id_tarefa, id_colaborador),
    FOREIGN KEY (id_tarefa) REFERENCES Tarefa(id_tarefa),
    FOREIGN KEY (id_colaborador) REFERENCES Colaborador(id_colaborador)
);