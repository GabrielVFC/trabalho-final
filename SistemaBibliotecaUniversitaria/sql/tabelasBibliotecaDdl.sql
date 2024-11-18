/* Criação da tabela Usuario */
CREATE TABLE Usuario (
    ID INTEGER PRIMARY KEY AUTOINCREMENT,
    Nome VARCHAR(100),
    Matricula VARCHAR(20) UNIQUE,
    Categoria TEXT CHECK(Categoria IN ('Aluno', 'Professor', 'Funcionario')),
    Contato VARCHAR(50)
);

/* Criação da tabela Livro */
CREATE TABLE Livro (
    ID INTEGER PRIMARY KEY AUTOINCREMENT,
    Titulo VARCHAR(150),
    Autor VARCHAR(100),
    ISBN VARCHAR(20) UNIQUE,
    Categoria VARCHAR(50),
    Status TEXT DEFAULT 'Disponivel' CHECK(Status IN ('Disponivel', 'Emprestado'))
);

/* Criação da tabela Emprestimo */
CREATE TABLE Emprestimo (
    ID INTEGER PRIMARY KEY AUTOINCREMENT,
    ID_Usuario INTEGER,
    ID_Livro INTEGER,
    Data_Do_Emprestimo DATE,
    Data_Devolucao_Prevista DATE,
    Data_Devolucao_Efetiva DATE,
    FOREIGN KEY (ID_Usuario) REFERENCES Usuario(ID),
    FOREIGN KEY (ID_Livro) REFERENCES Livro(ID)
);

/* Criação da tabela Multa */
CREATE TABLE Multa (
    ID INTEGER PRIMARY KEY AUTOINCREMENT,
    ID_Emprestimo INTEGER,
    Valor DECIMAL(10, 2),
    FOREIGN KEY (ID_Emprestimo) REFERENCES Emprestimo(ID)
);

/* Criação da tabela Reserva */
CREATE TABLE Reserva (
    ID INTEGER PRIMARY KEY AUTOINCREMENT,
    ID_Usuario INTEGER,
    ID_Livro INTEGER,
    Data_Pra_Reservar DATE,
    FOREIGN KEY (ID_Usuario) REFERENCES Usuario(ID),
    FOREIGN KEY (ID_Livro) REFERENCES Livro(ID)
);