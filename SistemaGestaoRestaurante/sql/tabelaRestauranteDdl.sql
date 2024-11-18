/*Criação da tabela dos clientes*/
CREATE TABLE Cliente (
    id_cliente INTEGER PRIMARY KEY AUTOINCREMENT,
    nome TEXT NOT NULL,
    telefone TEXT NOT NULL
);

/*Criação da tabela dos funcionarios*/
CREATE TABLE Funcionario (
    id_funcionario INTEGER PRIMARY KEY AUTOINCREMENT,
    nome TEXT NOT NULL,
    cargo TEXT NOT NULL
);

/*Criação da tabela dos pratos*/
CREATE TABLE Prato (
    id_prato INTEGER PRIMARY KEY AUTOINCREMENT,
    nome TEXT NOT NULL,
    preco REAL NOT NULL
);

/*Criação da tabela dos ingredientes*/
CREATE TABLE Ingrediente (
    id_ingrediente INTEGER PRIMARY KEY AUTOINCREMENT,
    nome TEXT NOT NULL,
    quantidade_no_estoque REAL NOT NULL,
    unidade TEXT NOT NULL
);

/*Criação da tabela dos pedidos*/
CREATE TABLE Pedido (
    id_pedido INTEGER PRIMARY KEY AUTOINCREMENT,
    id_cliente INTEGER NOT NULL,
    id_funcionario INTEGER NOT NULL,
    data_do_pedido DATE NOT NULL,
    FOREIGN KEY (id_cliente) REFERENCES Cliente(id_cliente),
    FOREIGN KEY (id_funcionario) REFERENCES Funcionario(id_funcionario)
);

/*Criação da tabela de relacionamento entre pedidos e pratos*/
CREATE TABLE Pedido_Prato (
    id_pedido INTEGER NOT NULL,
    id_prato INTEGER NOT NULL,
    PRIMARY KEY (id_pedido, id_prato),
    FOREIGN KEY (id_pedido) REFERENCES Pedido(id_pedido),
    FOREIGN KEY (id_prato) REFERENCES Prato(id_prato)
);

/*Criação da tabela de relacionamento entre pratos e ingredientes*/
CREATE TABLE Prato_Ingrediente (
    id_prato INTEGER NOT NULL,
    id_ingrediente INTEGER NOT NULL,
    quantidade REAL NOT NULL,
    PRIMARY KEY (id_prato, id_ingrediente),
    FOREIGN KEY (id_prato) REFERENCES Prato(id_prato),
    FOREIGN KEY (id_ingrediente) REFERENCES Ingrediente(id_ingrediente)
);