/*Inserir dados dos clientes*/
INSERT INTO Cliente (nome, email) VALUES ('Empresa A', 'contato@empresaA.com');
INSERT INTO Cliente (nome, email) VALUES ('Empresa B', 'contato@empresaB.com');

/*Inserir dados dos colaboradores*/
INSERT INTO Colaborador (nome, cargo) VALUES ('Gabriel Vinicius', 'Desenvolvedor');
INSERT INTO Colaborador (nome, cargo) VALUES ('Patricia Freitas', 'Gerente de Projetos');

/*Inserir dados do projeto*/
INSERT INTO Projeto (nome, descricao, id_cliente, data_de_inicio, data_final)
VALUES ('Sistema E-commerce', 'Desenvolvimento de plataforma de vendas', 1, '2024-11-01', '2025-02-28');
INSERT INTO Projeto (nome, descricao, id_cliente, data_de_inicio, data_final)
VALUES ('Website Institucional', 'Criação de site institucional', 2, '2024-12-01', '2025-01-31');

/*Inserir dados das tarefas*/
INSERT INTO Tarefa (nome, status, id_projeto) VALUES ('Desenvolver front-end', 'não iniciado', 1);
INSERT INTO Tarefa (nome, status, id_projeto) VALUES ('Configurar banco de dados', 'em andamento', 1);
INSERT INTO Tarefa (nome, status, id_projeto) VALUES ('Elaborar design', 'não iniciado', 2);

/*Inserir dados para atribuir tarefas aos colaboradores*/
INSERT INTO Tarefa_Colaborador (id_tarefa, id_colaborador) VALUES (1, 1);
INSERT INTO Tarefa_Colaborador (id_tarefa, id_colaborador) VALUES (2, 1);
INSERT INTO Tarefa_Colaborador (id_tarefa, id_colaborador) VALUES (3, 2);