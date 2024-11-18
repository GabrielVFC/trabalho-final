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

   # ----------------------------------------------------------

# Sistema de Gestão de Vendas - SQLite

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

 # ----------------------------------------------------------

# Sistema de Gerenciamento de Eventos - SQLite

Este projeto é um sistema de gerenciamento de eventos desenvolvido para fins acadêmicos, utilizando o banco de dados SQLite. Ele oferece funcionalidades para organizar eventos, gerenciar participantes, palestrantes e emitir certificados.

## Principais Funcionalidades

1. **Cadastro de Locais e Eventos**: Armazena informações sobre locais e eventos, como nome, endereço, data e descrição.
2. **Gestão de Participantes e Palestrantes**: Permite registrar dados de participantes e palestrantes, incluindo informações de contato e biografia.
3. **Inscrições**: Gerencia a relação entre participantes e eventos.
4. **Certificados**: Gera certificados para participantes de eventos.
5. **Relatórios**: Permite consultar participantes inscritos, certificados emitidos e eventos realizados em locais específicos.

## Estrutura do Banco de Dados

O sistema é composto por tabelas que organizam as informações de maneira relacional:
- **Locais**: Registra locais disponíveis para eventos.
- **Evento**: Armazena informações sobre os eventos.
- **Participante**: Contém dados dos participantes.
- **Palestrante**: Armazena dados dos palestrantes.
- **Inscricao**: Relaciona participantes e eventos.
- **Certificado**: Gerencia a emissão de certificados.

 # ----------------------------------------------------------

 # Sistema de Agendamento de Consultas Médicas - SQLite

Este projeto implementa um sistema simples de agendamento de consultas médicas utilizando o banco de dados SQLite. O sistema é composto por quatro tabelas principais: **Medico**, **Paciente**, **Consulta** e **Prontuario**, que armazenam informações sobre os médicos, pacientes, agendamentos e registros médicos, respectivamente.

## Funcionalidades

- **Cadastro de Médicos e Pacientes**: Adiciona médicos e pacientes ao sistema.
- **Agendamento de Consultas**: Registra consultas entre médicos e pacientes, incluindo data e horário.
- **Prontuário Médico**: Registra o diagnóstico e outras observações durante as consultas.
- **Consultas Realizadas**: Permite visualizar consultas realizadas por médico e por período específico.

## Tecnologias

- **SQLite**: Banco de dados utilizado para armazenar e gerenciar as informações.
- **SQL**: Linguagem utilizada para realizar operações no banco de dados.

## Como Usar

1. **Criar Banco de Dados**: Execute os scripts SQL para criar as tabelas.
2. **Inserir Dados**: Use os comandos `INSERT INTO` para adicionar médicos, pacientes, consultas e prontuários.
3. **Consultar Dados**: Realize consultas específicas para visualizar informações sobre médicos, pacientes, consultas e prontuários.

# ----------------------------------------------------------

# Sistema de Controle de Restaurante - SQLite

Este sistema foi desenvolvido para gerenciar informações de clientes, funcionários, pratos, ingredientes e pedidos de um restaurante. Utilizando o banco de dados SQLite, ele armazena dados essenciais como o nome e telefone dos clientes, os cargos dos funcionários, o nome e preço dos pratos, além do controle de estoque dos ingredientes.

## Funcionalidades

- **Cadastro de Clientes**: Registra nome e telefone dos clientes.
- **Cadastro de Funcionários**: Armazena dados dos funcionários e cargos.
- **Cadastro de Pratos**: Inclui pratos com preço e ingredientes.
- **Controle de Estoque de Ingredientes**: Gerencia a quantidade de ingredientes.
- **Pedidos e Relacionamento**: Registra pedidos e associa pratos aos ingredientes.

## Banco de Dados

O sistema utiliza o banco SQLite com as seguintes tabelas:
- **Cliente**
- **Funcionario**
- **Prato**
- **Ingrediente**
- **Pedido**
- **Pedido_Prato**
- **Prato_Ingrediente**

## Como usar

1. **Instalar SQLite**: Instale o SQLite no seu sistema.
2. **Criar o Banco de Dados**: Execute os comandos SQL para criar as tabelas.
3. **Inserir Dados**: Adicione dados de clientes, funcionários, pratos, ingredientes e pedidos.
4. **Consultas**: Realize consultas para verificar consumo de ingredientes, estoque e pedidos.

## Consultas Exemplos

- **Consumo de Ingredientes**: Exibe o consumo total de cada ingrediente por prato.
- **Estoque de Ingredientes**: Mostra a quantidade de ingredientes no estoque.
- **Pedidos por Cliente**: Lista os pedidos feitos pelos clientes e seus pratos.

# ----------------------------------------------------------

# Sistema de Gerenciamento de Projetos - SQLite

Este sistema foi desenvolvido para gerenciar projetos, clientes, colaboradores e tarefas, utilizando o banco de dados SQLite. Ele permite o registro de informações sobre clientes, colaboradores, projetos e tarefas, além de gerar relatórios sobre o andamento dos projetos.

## Funcionalidades

- Cadastro de Clientes, Colaboradores, Projetos e Tarefas.
- Atribuição de Tarefas aos Colaboradores.
- Relatórios de Progresso dos Projetos e Tarefas.

## Estrutura do Banco de Dados

- **Cliente**: Dados dos clientes.
- **Colaborador**: Dados dos colaboradores.
- **Projeto**: Dados dos projetos, relacionados aos clientes.
- **Tarefa**: Tarefas associadas aos projetos.
- **Tarefa_Colaborador**: Relaciona as tarefas aos colaboradores.

## Como Rodar

1. Clone o repositório.
2. Importe o banco SQLite e execute as consultas SQL.
3. Cadastre e gerencie os projetos e tarefas.
