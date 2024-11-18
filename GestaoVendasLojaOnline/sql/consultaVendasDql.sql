/*Relatório de vendas por cliente*/
SELECT Cliente.Nome AS Cliente, COUNT(Pedido.PedidoID) AS Total_De_Pedidos
FROM Cliente
JOIN Pedido ON Cliente.ClienteID = Pedido.ClienteID
GROUP BY Cliente.Nome;

/*Produtos que foi mais vendidos*/
SELECT Produto.Nome AS Produto, SUM(Pedido_Produto.Quantidade) AS Total_Vendido
FROM Produto
JOIN Pedido_Produto ON Produto.ProdutoID = Pedido_Produto.ProdutoID
GROUP BY Produto.Nome
ORDER BY Total_Vendido DESC;

/*Vendas por periodo*/
SELECT Pedido.Data_Do_Pedido, SUM(Pedido_Produto.Quantidade * Produto.Preco) AS Total_De_Vendas
FROM Pedido
JOIN Pedido_Produto ON Pedido.PedidoID = Pedido_Produto.PedidoID
JOIN Produto ON Pedido_Produto.ProdutoID = Produto.ProdutoID
GROUP BY Pedido.Data_Do_Pedido;