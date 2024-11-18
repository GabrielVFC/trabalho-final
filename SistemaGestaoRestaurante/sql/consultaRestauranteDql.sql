/*Controle de consumo de ingredientes por prato*/
SELECT p.nome AS Prato, i.nome AS Ingrediente, pi.quantidade * COUNT(pp.id_prato) AS Consumo_Total, i.quantidade_no_estoque AS Estoque_Atual
FROM Prato_Ingrediente pi
JOIN Ingrediente i ON pi.id_ingrediente = i.id_ingrediente
JOIN Pedido_Prato pp ON pi.id_prato = pp.id_prato
JOIN Prato p ON pi.id_prato = p.id_prato
GROUP BY p.nome, i.nome;

/*Estoque de ingredientes*/
SELECT nome AS Ingrediente, quantidade_no_estoque AS Estoque, unidade AS Unidade
FROM Ingrediente;

/*Pedidos realizados por cliente*/
SELECT c.nome AS Cliente, p.nome AS Prato, ped.data_do_pedido
FROM Pedido ped
JOIN Pedido_Prato pp ON ped.id_pedido = pp.id_pedido
JOIN Prato p ON pp.id_prato = p.id_prato
JOIN Cliente c ON ped.id_cliente = c.id_cliente;