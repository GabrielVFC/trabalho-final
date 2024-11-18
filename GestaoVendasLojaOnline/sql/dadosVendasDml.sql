/*Inserir Clientes*/
INSERT INTO Cliente (Nome, Endereco, Telefone) VALUES 
('Gabriel Vinicius', 'Rua A, 562', '1111-2222'),
('Patricia Freitas', 'Rua B, 921', '3333-4444');

/*Inserir Categorias*/
INSERT INTO Categoria (Nome) VALUES 
('Eletrônicos'), 
('Roupas');

/*Inserir Produtos*/
INSERT INTO Produto (Nome, Preco, Estoque, CategoriaID) VALUES 
('Smartphone', 1200.00, 50, 1),
('Relógio', 5000.00, 20, 2);

/*Inserir Pedidos*/
INSERT INTO Pedido (ClienteID, Data_Do_Pedido) VALUES 
(1, '2024-11-18'),
(2, '2024-12-02');

/*Inserir Produtos do pedido*/
INSERT INTO Pedido_Produto (PedidoID, ProdutoID, Quantidade) VALUES 
(1, 1, 1),
(2, 2, 3);