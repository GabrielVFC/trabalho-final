/*Relatório dos livros que foi mais emprestados*/
SELECT Livro.Titulo, COUNT(Emprestimo.ID) AS Total_De_Emprestimos
FROM Livro
JOIN Emprestimo ON Livro.ID = Emprestimo.ID_Livro
GROUP BY Livro.Titulo
ORDER BY Total_De_Emprestimos DESC;

/*Consultar os usuário que estão com multas pendentes*/
SELECT Usuario.Nome, SUM(Multa.Valor) AS Total_De_Multas
FROM Usuario
JOIN Emprestimo ON Usuario.ID = Emprestimo.ID_Usuario
JOIN Multa ON Emprestimo.ID = Multa.ID_Emprestimo
GROUP BY Usuario.Nome
HAVING Total_De_Multas > 0;

/*Lista de livros reservas pendentes*/
SELECT Reserva.Data_Pra_Reservar, Livro.Titulo, Usuario.Nome
FROM Reserva
JOIN Livro ON Reserva.ID_Livro = Livro.ID
JOIN Usuario ON Reserva.ID_Usuario = Usuario.ID
WHERE Livro.Status = 'Emprestado';