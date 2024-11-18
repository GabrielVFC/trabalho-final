# trabalho-final
Sistema de Gerenciamento de Biblioteca - SQLite

Este projeto é um sistema simples de gerenciamento de bibliotecas, desenvolvido como parte de um trabalho acadêmico, utilizando o banco de dados SQLite. Abaixo estão descritas suas funcionalidades principais e estrutura.

Funcionalidades
Gerenciamento de Usuários

Cadastro de usuários com nome, matrícula (única), categoria (Aluno, Professor ou Funcionário) e informações de contato.
Gerenciamento de Livros

Cadastro de livros com título, autor, ISBN (único), categoria e status (Disponível ou Emprestado).
Controle de Empréstimos

Registro de empréstimos de livros, com datas de empréstimo, devolução prevista e efetiva.
Gestão de Multas

Controle de multas associadas a empréstimos, com valores registrados por atraso.
Reserva de Livros

Registro de reservas de livros, com vínculo entre usuários e os livros reservados.
Consultas Implementadas
Relatório dos livros mais emprestados.
Listagem de usuários com multas pendentes.
Relação de reservas pendentes para livros emprestados.
Tecnologias Utilizadas
SQLite: Banco de dados leve e eficiente, ideal para projetos de pequeno a médio porte.
Linguagem SQL para criação de tabelas, inserção de dados e consultas.
Como Utilizar
Configuração Inicial
Execute os scripts SQL para criar as tabelas necessárias.

Inserção de Dados
Use os comandos INSERT fornecidos para popular as tabelas com dados iniciais de usuários, livros e empréstimos.

Consultas
Utilize os exemplos de SELECT para gerar relatórios úteis e gerenciar informações da biblioteca.
