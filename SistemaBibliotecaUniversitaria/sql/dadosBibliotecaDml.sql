/*Inserir usuários*/
INSERT INTO Usuario (Nome, Matricula, Categoria, Contato)
VALUES ('Gabriel Vinicius', '20245642', 'Aluno', 'gabriel@gmail.com');

/*Inserir livros*/
INSERT INTO Livro (Titulo, Autor, ISBN, Categoria, Status)
VALUES ('Mentes Inquietas', 'Ana Beatriz Barbosa Silva', '9768525058393', 'Psicologia e Saúde', 'Disponível');

/*Inserir emprestimos*/
INSERT INTO Emprestimo (ID_Usuario, ID_Livro, Data_Do_Emprestimo, Data_Devolucao_Prevista)
VALUES (1, 1, '2024-11-18', '2024-12-02');