/*Criação da tabela do Cliente*/
CREATE TABLE Cliente (
    ClienteID INTEGER PRIMARY KEY AUTOINCREMENT,
    Nome VARCHAR(100) NOT NULL,
    Endereco VARCHAR(255),
    Telefone VARCHAR(15)
);

/*Criação da tabela das Categorias*/
CREATE TABLE Categoria (
    CategoriaID INTEGER PRIMARY KEY AUTOINCREMENT,
    Nome VARCHAR(50) NOT NULL
);

/*Criação da tabela do Produto*/
CREATE TABLE Produto (
    ProdutoID INTEGER PRIMARY KEY AUTOINCREMENT,
    Nome VARCHAR(100) NOT NULL,
    Preco DECIMAL(10, 2) NOT NULL,
    Estoque INT NOT NULL,
    CategoriaID INTEGER,
    FOREIGN KEY (CategoriaID) REFERENCES Categoria(CategoriaID)
);

/*Criação da tabela do Pedido*/
CREATE TABLE Pedido (
    PedidoID INTEGER PRIMARY KEY AUTOINCREMENT,
    ClienteID INTEGER NOT NULL,
    Data_Do_Pedido DATE NOT NULL,
    FOREIGN KEY (ClienteID) REFERENCES Cliente(ClienteID)
);

/*Criação da tabela do Produto que foi pedido*/
CREATE TABLE Pedido_Produto (
    PedidoID INTEGER,
    ProdutoID INTEGER,
    Quantidade INT NOT NULL,
    PRIMARY KEY (PedidoID, ProdutoID),
    FOREIGN KEY (PedidoID) REFERENCES Pedido(PedidoID),
    FOREIGN KEY (ProdutoID) REFERENCES Produto(ProdutoID)
);