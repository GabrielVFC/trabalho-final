/*Relatório de progresso do projeto*/
SELECT p.nome AS Projeto, t.nome AS Tarefa, t.status
FROM Tarefa t
JOIN Projeto p ON t.id_projeto = p.id_projeto
WHERE p.nome = 'Sistema E-commerce';

/*Relatório de tarefas atribuídas a um colaborador*/
SELECT c.nome AS Colaborador, t.nome AS Tarefa, t.status, p.nome AS Projeto
FROM Tarefa_Colaborador tc
JOIN Tarefa t ON tc.id_tarefa = t.id_tarefa
JOIN Colaborador c ON tc.id_colaborador = c.id_colaborador
JOIN Projeto p ON t.id_projeto = p.id_projeto
WHERE c.nome = 'Carlos Souza';

/*Tarefas concluídas em um projeto*/
SELECT t.nome AS Tarefa, p.nome AS Projeto
FROM Tarefa t
JOIN Projeto p ON t.id_projeto = p.id_projeto
WHERE t.status = 'concluído' AND p.nome = 'Sistema E-commerce';