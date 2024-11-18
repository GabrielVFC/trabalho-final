/*Inserir dados dos clientes*/
INSERT INTO Cliente (nome, telefone) VALUES ('Gabriel Vinicius', '11987654321');
INSERT INTO Cliente (nome, telefone) VALUES ('Patricia Freitas', '11976543210');

/*Inserir dados dos funcionarios*/
INSERT INTO Funcionario (nome, cargo) VALUES ('David Gabriel', 'Garçom');
INSERT INTO Funcionario (nome, cargo) VALUES ('Carla Patricia', 'Cozinheira');

-/*Inserir dados dos pratos*/
INSERT INTO Prato (nome, preco) VALUES ('Espaguete à Bolonhesa', 25.00);
INSERT INTO Prato (nome, preco) VALUES ('Salada Caesar', 18.50);

/*Inserir dados dos ingredientes*/
INSERT INTO Ingrediente (nome, quantidade_estoque, unidade) VALUES ('Macarrão', 10.0, 'kg');
INSERT INTO Ingrediente (nome, quantidade_estoque, unidade) VALUES ('Carne Moída', 5.0, 'kg');
INSERT INTO Ingrediente (nome, quantidade_estoque, unidade) VALUES ('Alface', 3.0, 'kg');

/*Inserir dados do relacionamento entre pratos e ingredientes*/
INSERT INTO Prato_Ingrediente (id_prato, id_ingrediente, quantidade) VALUES (1, 1, 0.2);
INSERT INTO Prato_Ingrediente (id_prato, id_ingrediente, quantidade) VALUES (1, 2, 0.1);
INSERT INTO Prato_Ingrediente (id_prato, id_ingrediente, quantidade) VALUES (2, 3, 0.2);

/*Inserir dados dos pedidos*/
INSERT INTO Pedido (id_cliente, id_funcionario, data_do_pedido) VALUES (1, 1, '2024-11-18');
INSERT INTO Pedido (id_cliente, id_funcionario, data_do_pedido) VALUES (2, 1, '2024-12-03');

/*Inserir dados do relacionamento entre pedidos e pratos*/
INSERT INTO Pedido_Prato (id_pedido, id_prato) VALUES (1, 1);
INSERT INTO Pedido_Prato (id_pedido, id_prato) VALUES (2, 2);