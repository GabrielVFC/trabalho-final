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

   Primeiro, execute o script SQL para criar as tabelas necessárias no banco de dados SQLite:

 ```sql
   CREATE TABLE Usuario (
       ID INTEGER PRIMARY KEY AUTOINCREMENT,
       Nome VARCHAR(100),
       Matricula VARCHAR(20) UNIQUE,
       Categoria TEXT CHECK(Categoria IN ('Aluno', 'Professor', 'Funcionario')),
       Contato VARCHAR(50)
   );
   
   CREATE TABLE Livro (
    ID INTEGER PRIMARY KEY AUTOINCREMENT,
    Titulo VARCHAR(150),
    Autor VARCHAR(100),
    ISBN VARCHAR(20) UNIQUE,
    Categoria VARCHAR(50),
    Status TEXT DEFAULT 'Disponivel' CHECK(Status IN ('Disponivel', 'Emprestado'))
   );
   
   CREATE TABLE Emprestimo (
    ID INTEGER PRIMARY KEY AUTOINCREMENT,
    ID_Usuario INTEGER,
    ID_Livro INTEGER,
    Data_Do_Emprestimo DATE,
    Data_Devolucao_Prevista DATE,
    Data_Devolucao_Efetiva DATE,
    FOREIGN KEY (ID_Usuario) REFERENCES Usuario(ID),
    FOREIGN KEY (ID_Livro) REFERENCES Livro(ID)
   );
   
   CREATE TABLE Multa (
    ID INTEGER PRIMARY KEY AUTOINCREMENT,
    ID_Emprestimo INTEGER,
    Valor DECIMAL(10, 2),
    FOREIGN KEY (ID_Emprestimo) REFERENCES Emprestimo(ID)
   );
   
   CREATE TABLE Reserva (
    ID INTEGER PRIMARY KEY AUTOINCREMENT,
    ID_Usuario INTEGER,
    ID_Livro INTEGER,
    Data_Pra_Reservar DATE,
    FOREIGN KEY (ID_Usuario) REFERENCES Usuario(ID),
    FOREIGN KEY (ID_Livro) REFERENCES Livro(ID)
   );
   ```
   

## Inserção de Dados

Após a criação das tabelas, insira dados iniciais. Exemplo:

- Inserir usuários
 ```sql
INSERT INTO Usuario (Nome, Matricula, Categoria, Contato)
VALUES ('Gabriel Vinicius', '20245642', 'Aluno', 'gabriel@gmail.com');
```

## Consultas

Utilize os seguintes exemplos de consultas para gerar relatórios úteis:

- Relatório de livros mais emprestados:
 ```sql
SELECT Livro.Titulo, COUNT(Emprestimo.ID) AS Total_De_Emprestimos
FROM Livro
JOIN Emprestimo ON Livro.ID = Emprestimo.ID_Livro
GROUP BY Livro.Titulo
ORDER BY Total_De_Emprestimos DESC;
```

- Usuários com multas pendentes:
 ```sql
SELECT Usuario.Nome, SUM(Multa.Valor) AS Total_De_Multas
FROM Usuario
JOIN Emprestimo ON Usuario.ID = Emprestimo.ID_Usuario
JOIN Multa ON Emprestimo.ID = Multa.ID_Emprestimo
GROUP BY Usuario.Nome
HAVING Total_De_Multas > 0;
```

## Ferramentas Utilizadas
- SQLite: Banco de dados leve e eficiente.
- SQL: Linguagem para criação e manipulação de dados.

# ----------------------------------------------------------

# Sistema de Gestão de Vendas - SQLite

Este projeto é um sistema de gestão de vendas desenvolvido para fins acadêmicos, utilizando o banco de dados SQLite. Ele foi projetado para gerenciar informações sobre clientes, produtos, categorias, pedidos e itens de pedido, além de gerar relatórios.

## Estrutura do Banco de Dados

O banco de dados contém as seguintes tabelas:

1. **Cliente**: Armazena informações sobre os clientes.
2. **Categoria**: Gerencia as categorias de produtos.
3. **Produto**: Registra os produtos.
4. **Pedido**: Representa as vendas realizadas.
5. **Pedido_Produto**: Conecta pedidos aos produtos comprados.

## Funcionalidades

1. Cadastro de dados:
   - Clientes, Categorias, Produtos e Pedidos.
2. Relatórios:
   - Total de pedidos por cliente.
   - Produtos mais vendidos.
   - Total de vendas por período.

## Como Usar

## Criação das tabelas
Execute o seguinte script no SQLite para criar as tabelas:

   ```sql
      CREATE TABLE Cliente (
          ClienteID INTEGER PRIMARY KEY AUTOINCREMENT,
          Nome VARCHAR(100) NOT NULL,
          Endereco VARCHAR(255),
          Telefone VARCHAR(15)
      );

      CREATE TABLE Categoria (
          CategoriaID INTEGER PRIMARY KEY AUTOINCREMENT,
          Nome VARCHAR(50) NOT NULL
      );
   
   CREATE TABLE Produto (
       ProdutoID INTEGER PRIMARY KEY AUTOINCREMENT,
       Nome VARCHAR(100) NOT NULL,
       Preco DECIMAL(10, 2) NOT NULL,
       Estoque INT NOT NULL,
       CategoriaID INTEGER,
       FOREIGN KEY (CategoriaID) REFERENCES Categoria(CategoriaID)
   );
   
   CREATE TABLE Pedido (
       PedidoID INTEGER PRIMARY KEY AUTOINCREMENT,
       ClienteID INTEGER NOT NULL,
       Data_Do_Pedido DATE NOT NULL,
       FOREIGN KEY (ClienteID) REFERENCES Cliente(ClienteID)
   );
   
   CREATE TABLE Pedido_Produto (
       PedidoID INTEGER,
       ProdutoID INTEGER,
       Quantidade INT NOT NULL,
       PRIMARY KEY (PedidoID, ProdutoID),
       FOREIGN KEY (PedidoID) REFERENCES Pedido(PedidoID),
       FOREIGN KEY (ProdutoID) REFERENCES Produto(ProdutoID)
   );
```
## Inserção de Dados

- Adicione dados iniciais com o seguinte script:
 ```sql
INSERT INTO Cliente (Nome, Endereco, Telefone) VALUES 
('Gabriel Vinicius', 'Rua A, 562', '1111-2222'),
('Patricia Freitas', 'Rua B, 921', '3333-4444');

INSERT INTO Categoria (Nome) VALUES 
('Eletrônicos'), 
('Roupas');

INSERT INTO Produto (Nome, Preco, Estoque, CategoriaID) VALUES 
('Smartphone', 1200.00, 50, 1),
('Relógio', 5000.00, 20, 2);

INSERT INTO Pedido (ClienteID, Data_Do_Pedido) VALUES 
(1, '2024-11-18'),
(2, '2024-12-02');

INSERT INTO Pedido_Produto (PedidoID, ProdutoID, Quantidade) VALUES 
(1, 1, 1),
(2, 2, 3);
```
## Relatórios
- Total de pedidos por cliente:
 ```sql
SELECT Cliente.Nome AS Cliente, COUNT(Pedido.PedidoID) AS Total_De_Pedidos
FROM Cliente
JOIN Pedido ON Cliente.ClienteID = Pedido.ClienteID
GROUP BY Cliente.Nome;
```
- Produtos mais vendidos:
 ```sql
SELECT Produto.Nome AS Produto, SUM(Pedido_Produto.Quantidade) AS Total_Vendido
FROM Produto
JOIN Pedido_Produto ON Produto.ProdutoID = Pedido_Produto.ProdutoID
GROUP BY Produto.Nome
ORDER BY Total_Vendido DESC;
```
- Total de vendas por período:
 ```sql
SELECT Pedido.Data_Do_Pedido, SUM(Pedido_Produto.Quantidade * Produto.Preco) AS Total_De_Vendas
FROM Pedido
JOIN Pedido_Produto ON Pedido.PedidoID = Pedido_Produto.PedidoID
JOIN Produto ON Pedido_Produto.ProdutoID = Produto.ProdutoID
GROUP BY Pedido.Data_Do_Pedido;
```
## Ferramentas Utilizadas

SQLite: Banco de dados leve e eficiente.
SQL: Para criação e manipulação de dados.

 # ----------------------------------------------------------

# Sistema de Gerenciamento de Eventos - SQLite
Este projeto é um sistema de gerenciamento de eventos desenvolvido para fins acadêmicos, utilizando o banco de dados SQLite. Ele permite gerenciar locais, eventos, participantes, palestrantes e inscrições, além de gerar certificados e relatórios personalizados.

## Estrutura do Banco de Dados

O banco de dados contém as seguintes tabelas:
 1. Locais: Registra os locais disponíveis para eventos.
 2. Evento: Armazena informações sobre os eventos.
 3. Participante: Contém dados dos participantes.
 4. Palestrante: Registra informações sobre palestrantes.
 5. Inscricao: Relaciona participantes e eventos.
 6. Certificado: Gerencia os certificados emitidos.
    
## Funcionalidades
1. Cadastro de dados:
   - Locais, eventos, participantes e palestrantes.
2. Gerenciamento:
   - Inscrições em eventos e emissão de certificados.
3. Relatórios:
   - Participantes por evento.
   - Certificados emitidos por evento.
   - Eventos realizados por local.
## Como Usar
Criação das Tabelas

Execute o seguinte script no SQLite para criar as tabelas:

 ```sql
CREATE TABLE Locais (
    id_local INTEGER PRIMARY KEY AUTOINCREMENT,
    nome_local VARCHAR(100),
    endereco VARCHAR(255)
);

CREATE TABLE Evento (
    id_evento INTEGER PRIMARY KEY AUTOINCREMENT,
    nome_evento VARCHAR(100),
    data_evento DATE,
    descricao TEXT,
    id_local INTEGER,
    FOREIGN KEY (id_local) REFERENCES Locais(id_local)
);

CREATE TABLE Participante (
    id_participante INTEGER PRIMARY KEY AUTOINCREMENT,
    nome TEXT,
    email TEXT,
    telefone TEXT
);

CREATE TABLE Palestrante (
    id_palestrante INTEGER PRIMARY KEY AUTOINCREMENT,
    nome VARCHAR(100),
    biografia TEXT,
    email VARCHAR(100)
);

CREATE TABLE Inscricao (
    id_inscricao INTEGER PRIMARY KEY AUTOINCREMENT,
    id_participante INTEGER,
    id_evento INTEGER,
    data_inscricao DATE,
    FOREIGN KEY (id_participante) REFERENCES Participante(id_participante),
    FOREIGN KEY (id_evento) REFERENCES Evento(id_evento)
);

CREATE TABLE Certificado (
    id_certificado INTEGER PRIMARY KEY AUTOINCREMENT,
    id_participante INTEGER,
    id_evento INTEGER,
    data_emissao DATE,
    caminho_certificado VARCHAR(255),
    FOREIGN KEY (id_participante) REFERENCES Participante(id_participante),
    FOREIGN KEY (id_evento) REFERENCES Evento(id_evento)
);
```
# Inserção de Dados
Adicione dados iniciais com o seguinte script:

 ```sql
INSERT INTO Locais (nome_local, endereco) VALUES 
('Centro de Convenções', 'Rua X, 123'),
('Auditório A', 'Avenida Y, 456');

INSERT INTO Participante (nome, email, telefone) VALUES 
('Gabriel Vinicius', 'gabriel@email.com', '123456789');

INSERT INTO Evento (nome_evento, data_evento, descricao, id_local) VALUES 
('Workshop de Desenvolvimento', '2024-12-05', 'Evento sobre programação', 1);
```
## Relatórios
1. Participantes de um Evento:

 ```sql
SELECT p.nome, p.email, p.telefone
FROM Participante p
JOIN Inscricao i ON p.id_participante = i.id_participante
WHERE i.id_evento = 1;
```
2. Eventos por Local:

 ```sql
SELECT e.nome_evento, e.data_evento
FROM Evento e
JOIN Locais l ON e.id_local = l.id_local
WHERE l.nome_local = 'Centro de Convenções';
```
## Ferramentas Utilizadas
- SQLite: Banco de dados relacional leve e eficiente.
- SQL: Utilizado para criação e manipulação do banco de dados.

 # ----------------------------------------------------------

# Sistema de Agendamento de Consultas Médicas

Este projeto implementa um sistema simples de agendamento de consultas médicas utilizando o banco de dados SQLite. Ele organiza informações de médicos, pacientes, consultas e prontuários.

## Funcionalidades

- **Cadastro de Médicos e Pacientes**
- **Agendamento de Consultas**
- **Registro de Prontuários**
- **Consultas Realizadas por Médico ou Período**

## Tecnologias

- **SQLite**: Para armazenar dados.
- **SQL**: Para manipulação do banco de dados.

## Como Usar

### 1. Criação das tabelas

Execute o código abaixo para criar as tabelas necessárias no banco de dados:

```sql
CREATE TABLE Medico (
    id_medico INTEGER PRIMARY KEY AUTOINCREMENT,
    nome TEXT NOT NULL,
    especialidade TEXT NOT NULL
);

CREATE TABLE Paciente (
    id_paciente INTEGER PRIMARY KEY AUTOINCREMENT,
    nome TEXT NOT NULL,
    telefone TEXT NOT NULL
);

CREATE TABLE Consulta (
    id_consulta INTEGER PRIMARY KEY AUTOINCREMENT,
    id_medico INTEGER NOT NULL,
    id_paciente INTEGER NOT NULL,
    data_consulta DATE NOT NULL,
    horario_consulta TEXT NOT NULL,
    FOREIGN KEY (id_medico) REFERENCES Medico(id_medico),
    FOREIGN KEY (id_paciente) REFERENCES Paciente(id_paciente)
);

CREATE TABLE Prontuario (
    id_prontuario INTEGER PRIMARY KEY AUTOINCREMENT,
    id_consulta INTEGER NOT NULL,
    descricao TEXT NOT NULL,
    FOREIGN KEY (id_consulta) REFERENCES Consulta(id_consulta)
);
```
2. Inserção de dados
Use os comandos abaixo para adicionar informações iniciais ao banco:

 ```sql
INSERT INTO Medico (nome, especialidade) VALUES ('Dr. Carlos Silva', 'Cardiologista');
INSERT INTO Medico (nome, especialidade) VALUES ('Dra. Ana Souza', 'Pediatra');

INSERT INTO Paciente (nome, telefone) VALUES ('João Alves', '11987654321');
INSERT INTO Paciente (nome, telefone) VALUES ('Maria Pereira', '11976543210');

INSERT INTO Consulta (id_medico, id_paciente, data_consulta, horario_consulta)
VALUES (1, 1, '2024-11-19', '11:00');

INSERT INTO Prontuario (id_consulta, descricao)
VALUES (1, 'Paciente apresenta pressão alta e será monitorado.');
```
3. Consultas úteis
- Consultas realizadas por um médico:
 ```sql
SELECT m.nome AS Medico, p.nome AS Paciente, c.data_consulta, c.horario_consulta
FROM Consulta c
JOIN Medico m ON c.id_medico = m.id_medico
JOIN Paciente p ON c.id_paciente = p.id_paciente
WHERE m.nome = 'Dr. Carlos Silva';
```
- Prontuário completo de um paciente:
 ```sql
SELECT p.nome AS Paciente, m.nome AS Medico, pr.descricao, c.data_consulta
FROM Prontuario pr
JOIN Consulta c ON pr.id_consulta = c.id_consulta
JOIN Paciente p ON c.id_paciente = p.id_paciente
JOIN Medico m ON c.id_medico = m.id_medico
WHERE p.nome = 'Gabriel Vinicius';
```
## Ferramentas Utilizadas
- SQLite: Banco de dados leve e eficiente.
- SQL: Linguagem para criação e manipulação de dados.

# ----------------------------------------------------------

# Sistema de Controle de Restaurante - SQLite

Este projeto é um sistema de controle de restaurante desenvolvido para fins acadêmicos, utilizando o banco de dados SQLite. Ele foi projetado para gerenciar informações sobre clientes, funcionários, pratos, ingredientes e pedidos, além de gerar relatórios úteis para a gestão.

## Estrutura do Banco de Dados

O banco de dados contém as seguintes tabelas:

1. **Cliente**: Armazena informações sobre os clientes.
2. **Funcionario**: Contém os dados dos funcionários do restaurante.
3. **Prato**: Registra os pratos oferecidos no restaurante.
4. **Ingrediente**: Gerencia o estoque de ingredientes disponíveis.
5. **Pedido**: Representa os pedidos realizados pelos clientes.
6. **Pedido_Prato**: Conecta os pedidos aos pratos solicitados.
7. **Prato_Ingrediente**: Relaciona os pratos aos ingredientes necessários para prepará-los.

## Funcionalidades

1. Cadastro de dados:
   - Clientes, Funcionários, Pratos, Ingredientes e Pedidos.
2. Controle:
   - Estoque de ingredientes.
   - Relacionamento entre pedidos e pratos.
3. Relatórios:
   - Consumo de ingredientes por prato.
   - Estoque atual de ingredientes.
   - Pedidos realizados por cliente.

## Como Usar

### Criação das Tabelas

Execute o seguinte script no SQLite para criar as tabelas:

```sql
CREATE TABLE Cliente (
    id_cliente INTEGER PRIMARY KEY AUTOINCREMENT,
    nome TEXT NOT NULL,
    telefone TEXT NOT NULL
);

CREATE TABLE Funcionario (
    id_funcionario INTEGER PRIMARY KEY AUTOINCREMENT,
    nome TEXT NOT NULL,
    cargo TEXT NOT NULL
);

CREATE TABLE Prato (
    id_prato INTEGER PRIMARY KEY AUTOINCREMENT,
    nome TEXT NOT NULL,
    preco REAL NOT NULL
);

CREATE TABLE Ingrediente (
    id_ingrediente INTEGER PRIMARY KEY AUTOINCREMENT,
    nome TEXT NOT NULL,
    quantidade_no_estoque REAL NOT NULL,
    unidade TEXT NOT NULL
);

CREATE TABLE Pedido (
    id_pedido INTEGER PRIMARY KEY AUTOINCREMENT,
    id_cliente INTEGER NOT NULL,
    id_funcionario INTEGER NOT NULL,
    data_do_pedido DATE NOT NULL,
    FOREIGN KEY (id_cliente) REFERENCES Cliente(id_cliente),
    FOREIGN KEY (id_funcionario) REFERENCES Funcionario(id_funcionario)
);

CREATE TABLE Pedido_Prato (
    id_pedido INTEGER NOT NULL,
    id_prato INTEGER NOT NULL,
    PRIMARY KEY (id_pedido, id_prato),
    FOREIGN KEY (id_pedido) REFERENCES Pedido(id_pedido),
    FOREIGN KEY (id_prato) REFERENCES Prato(id_prato)
);

CREATE TABLE Prato_Ingrediente (
    id_prato INTEGER NOT NULL,
    id_ingrediente INTEGER NOT NULL,
    quantidade REAL NOT NULL,
    PRIMARY KEY (id_prato, id_ingrediente),
    FOREIGN KEY (id_prato) REFERENCES Prato(id_prato),
    FOREIGN KEY (id_ingrediente) REFERENCES Ingrediente(id_ingrediente)
);
```
## Inserção de Dados
Adicione dados iniciais com o seguinte script:

 ```sql
INSERT INTO Cliente (nome, telefone) VALUES ('Gabriel Vinicius', '11987654321');
INSERT INTO Cliente (nome, telefone) VALUES ('Patricia Freitas', '11976543210');

INSERT INTO Funcionario (nome, cargo) VALUES ('David Gabriel', 'Garçom');
INSERT INTO Funcionario (nome, cargo) VALUES ('Carla Patricia', 'Cozinheira');

INSERT INTO Prato (nome, preco) VALUES ('Espaguete à Bolonhesa', 25.00);
INSERT INTO Prato (nome, preco) VALUES ('Salada Caesar', 18.50);

INSERT INTO Ingrediente (nome, quantidade_no_estoque, unidade) VALUES ('Macarrão', 10.0, 'kg');
INSERT INTO Ingrediente (nome, quantidade_no_estoque, unidade) VALUES ('Carne Moída', 5.0, 'kg');
INSERT INTO Ingrediente (nome, quantidade_no_estoque, unidade) VALUES ('Alface', 3.0, 'kg');
```
## Relatórios
- Consumo de Ingredientes:

 ```sql
SELECT p.nome AS Prato, i.nome AS Ingrediente, 
       pi.quantidade * COUNT(pp.id_prato) AS Consumo_Total, 
       i.quantidade_no_estoque AS Estoque_Atual
FROM Prato_Ingrediente pi
JOIN Ingrediente i ON pi.id_ingrediente = i.id_ingrediente
JOIN Pedido_Prato pp ON pi.id_prato = pp.id_prato
JOIN Prato p ON pi.id_prato = p.id_prato
GROUP BY p.nome, i.nome;
```
- Pedidos por Cliente:
- 
 ```sql
SELECT c.nome AS Cliente, p.nome AS Prato, ped.data_do_pedido
FROM Pedido ped
JOIN Pedido_Prato pp ON ped.id_pedido = pp.id_pedido
JOIN Prato p ON pp.id_prato = p.id_prato
JOIN Cliente c ON ped.id_cliente = c.id_cliente;
```
## Ferramentas Utilizadas
- SQLite: Banco de dados leve e eficiente.
- SQL: Linguagem para criação e manipulação de dados.

# ----------------------------------------------------------

# Sistema de Gestão de Projetos - SQLite

Este projeto é um sistema de gestão de projetos desenvolvido para fins acadêmicos, utilizando o banco de dados SQLite. Ele permite o gerenciamento de informações sobre clientes, colaboradores, projetos e tarefas, além de gerar relatórios sobre o andamento dos projetos.

## Estrutura do Banco de Dados

O banco de dados contém as seguintes tabelas:

1. **Cliente**: Armazena informações sobre os clientes.
2. **Colaborador**: Armazena informações sobre os colaboradores.
3. **Projeto**: Registra os projetos e os associa aos clientes.
4. **Tarefa**: Gerencia as tarefas dentro dos projetos.
5. **Tarefa_Colaborador**: Relaciona tarefas aos colaboradores responsáveis.

## Funcionalidades

1. Cadastro de dados:
   - Clientes, Colaboradores, Projetos e Tarefas.
2. Relatórios:
   - Progresso de projetos.
   - Tarefas atribuídas a colaboradores.
   - Tarefas concluídas em projetos.

## Como Usar

### Criação das Tabelas

Execute o seguinte script no SQLite para criar as tabelas:

```sql
CREATE TABLE Cliente (
    id_cliente INTEGER PRIMARY KEY AUTOINCREMENT,
    nome TEXT NOT NULL,
    email TEXT NOT NULL
);

CREATE TABLE Colaborador (
    id_colaborador INTEGER PRIMARY KEY AUTOINCREMENT,
    nome TEXT NOT NULL,
    cargo TEXT NOT NULL
);

CREATE TABLE Projeto (
    id_projeto INTEGER PRIMARY KEY AUTOINCREMENT,
    nome TEXT NOT NULL,
    descricao TEXT NOT NULL,
    id_cliente INTEGER NOT NULL,
    data_de_inicio DATE NOT NULL,
    data_final DATE NOT NULL,
    FOREIGN KEY (id_cliente) REFERENCES Cliente(id_cliente)
);

CREATE TABLE Tarefa (
    id_tarefa INTEGER PRIMARY KEY AUTOINCREMENT,
    nome TEXT NOT NULL,
    status TEXT NOT NULL CHECK (status IN ('não iniciado', 'em andamento', 'concluído')),
    id_projeto INTEGER NOT NULL,
    FOREIGN KEY (id_projeto) REFERENCES Projeto(id_projeto)
);

CREATE TABLE Tarefa_Colaborador (
    id_tarefa INTEGER NOT NULL,
    id_colaborador INTEGER NOT NULL,
    PRIMARY KEY (id_tarefa, id_colaborador),
    FOREIGN KEY (id_tarefa) REFERENCES Tarefa(id_tarefa),
    FOREIGN KEY (id_colaborador) REFERENCES Colaborador(id_colaborador)
);
```
## Inserção de Dados
Adicione dados iniciais com o seguinte script:

 ```sql
INSERT INTO Cliente (nome, email) VALUES 
('Empresa A', 'contato@empresaA.com'),
('Empresa B', 'contato@empresaB.com');

INSERT INTO Colaborador (nome, cargo) VALUES 
('Gabriel Vinicius', 'Desenvolvedor'),
('Patricia Freitas', 'Gerente de Projetos');

INSERT INTO Projeto (nome, descricao, id_cliente, data_de_inicio, data_final)
VALUES 
('Sistema E-commerce', 'Desenvolvimento de plataforma de vendas', 1, '2024-11-01', '2025-02-28'),
('Website Institucional', 'Criação de site institucional', 2, '2024-12-01', '2025-01-31');

INSERT INTO Tarefa (nome, status, id_projeto) VALUES 
('Desenvolver front-end', 'não iniciado', 1),
('Configurar banco de dados', 'em andamento', 1),
('Elaborar design', 'não iniciado', 2);

INSERT INTO Tarefa_Colaborador (id_tarefa, id_colaborador) VALUES 
(1, 1),
(2, 1),
(3, 2);
```
## Consultas de Relatórios
- Relatório de Progresso do Projeto:
 ```sql
SELECT p.nome AS Projeto, t.nome AS Tarefa, t.status
FROM Tarefa t
JOIN Projeto p ON t.id_projeto = p.id_projeto
WHERE p.nome = 'Sistema E-commerce';
```
- Relatório de Tarefas Atribuídas a um Colaborador:
 ```sql
SELECT c.nome AS Colaborador, t.nome AS Tarefa, t.status, p.nome AS Projeto
FROM Tarefa_Colaborador tc
JOIN Tarefa t ON tc.id_tarefa = t.id_tarefa
JOIN Colaborador c ON tc.id_colaborador = c.id_colaborador
JOIN Projeto p ON t.id_projeto = p.id_projeto
WHERE c.nome = 'Carlos Souza';
```
- Tarefas Concluídas em um Projeto:
 ```sql
SELECT t.nome AS Tarefa, p.nome AS Projeto
FROM Tarefa t
JOIN Projeto p ON t.id_projeto = p.id_projeto
WHERE t.status = 'concluído' AND p.nome = 'Sistema E-commerce';
```
## Ferramentas Utilizadas
- SQLite: Banco de dados leve e eficiente para armazenar as informações.
- SQL: Linguagem usada para criação, inserção e manipulação dos dados.

