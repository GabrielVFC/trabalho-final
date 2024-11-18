/* Criação da tabela de locais do evento */
CREATE TABLE Locais (
    id_local INTEGER PRIMARY KEY AUTOINCREMENT,
    nome_local VARCHAR(100),
    endereco VARCHAR(255)
);

/* Criação da tabela de eventos */
CREATE TABLE Evento (
    id_evento INTEGER PRIMARY KEY AUTOINCREMENT,
    nome_evento VARCHAR(100),
    data_evento DATE,
    descricao TEXT,
    id_local INTEGER,
    FOREIGN KEY (id_local) REFERENCES Locais(id_local)
);

/* Criação da tabela dos participantes */
CREATE TABLE Participante (
    id_participante INTEGER PRIMARY KEY AUTOINCREMENT,
    nome TEXT,
    email TEXT,
    telefone TEXT
);

/* Criação da tabela dos palestrantes */
CREATE TABLE Palestrante (
    id_palestrante INTEGER PRIMARY KEY AUTOINCREMENT,
    nome VARCHAR(100),
    biografia TEXT,
    email VARCHAR(100)
);

/* Criação da tabela de inscrição */
CREATE TABLE Inscricao (
    id_inscricao INTEGER PRIMARY KEY AUTOINCREMENT,
    id_participante INTEGER,
    id_evento INTEGER,
    data_inscricao DATE,
    FOREIGN KEY (id_participante) REFERENCES Participante(id_participante),
    FOREIGN KEY (id_evento) REFERENCES Evento(id_evento)
);

/* Criação da tabela de certificados */
CREATE TABLE Certificado (
    id_certificado INTEGER PRIMARY KEY AUTOINCREMENT,
    id_participante INTEGER,
    id_evento INTEGER,
    data_emissao DATE,
    caminho_certificado VARCHAR(255),
    FOREIGN KEY (id_participante) REFERENCES Participante(id_participante),
    FOREIGN KEY (id_evento) REFERENCES Evento(id_evento)
);