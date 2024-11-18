# trabalho-final

# Sistema de Gerenciamento de Biblioteca - SQLite

Este projeto é um sistema simples de gerenciamento de bibliotecas, desenvolvido como parte de um trabalho acadêmico, utilizando o banco de dados **SQLite**.

## Funcionalidades

1. **Gerenciamento de Usuários**
   - Cadastro de usuários com nome, matrícula (única), categoria (Aluno, Professor ou Funcionário) e informações de contato.

2. **Gerenciamento de Livros**
   - Cadastro de livros com título, autor, ISBN (único), categoria e status (Disponível ou Emprestado).

3. **Controle de Empréstimos**
   - Registro de empréstimos de livros, com datas de empréstimo, devolução prevista e efetiva.

4. **Gestão de Multas**
   - Controle de multas associadas a empréstimos, com valores registrados por atraso.

5. **Reserva de Livros**
   - Registro de reservas de livros, com vínculo entre usuários e os livros reservados.

## Consultas Implementadas

- Relatório dos livros mais emprestados.
- Listagem de usuários com multas pendentes.
- Relação de reservas pendentes para livros emprestados.

## Tecnologias Utilizadas

- **SQLite**: Banco de dados leve e eficiente, ideal para projetos de pequeno a médio porte.
- Linguagem SQL para criação de tabelas, inserção de dados e consultas.

## Como Utilizar

1. **Configuração Inicial**  
   Execute os scripts SQL para criar as tabelas necessárias.

2. **Inserção de Dados**  
   Use os comandos `INSERT` fornecidos para popular as tabelas com dados iniciais de usuários, livros e empréstimos.

3. **Consultas**  
   Utilize os exemplos de `SELECT` para gerar relatórios úteis e gerenciar informações da biblioteca.

   **--------------------------------------------------------------------------------------------------------------------**

# Sistema de Gestão de Vendas - Trabalho Acadêmico

Este projeto é um sistema de gestão de vendas desenvolvido para fins acadêmicos, utilizando o banco de dados SQLite. Ele foi projetado para gerenciar informações sobre clientes, produtos, categorias, pedidos e itens de pedido. Além disso, permite a geração de relatórios de vendas.

## Estrutura do Banco de Dados

O banco de dados contém cinco tabelas principais:

1. **Cliente**: Armazena informações sobre os clientes (ID, nome, endereço, telefone).
2. **Categoria**: Gerencia as categorias dos produtos.
3. **Produto**: Registra produtos com nome, preço, estoque e sua respectiva categoria.
4. **Pedido**: Representa as vendas realizadas, relacionando-se com clientes.
5. **Pedido_Produto**: Conecta pedidos aos produtos comprados, incluindo a quantidade adquirida.

## Funcionalidades

1. **Cadastro de dados**:
   - Clientes.
   - Categorias de produtos.
   - Produtos.
   - Pedidos e seus itens.

2. **Relatórios**:
   - Quantidade de pedidos por cliente.
   - Produtos mais vendidos.
   - Vendas totais por período.

## Ferramentas Utilizadas

- **SQLite**: Banco de dados leve e eficiente para armazenamento e consultas.
- **SQL**: Linguagem utilizada para criação de tabelas, inserção de dados e geração de relatórios.

## Como Executar

1. Configure o SQLite e um cliente de banco de dados de sua preferência.
2. Importe o script SQL fornecido no projeto.
3. Execute as consultas para inserir dados e gerar os relatórios necessários.



