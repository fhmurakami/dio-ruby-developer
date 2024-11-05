# Blog em Rails

Este é um projeto de blog simples desenvolvido em Ruby on Rails. O objetivo do projeto é criar uma plataforma para publicar e gerenciar posts, com funcionalidades básicas de criação, edição e exclusão de conteúdo.

## Funcionalidades

- Criação de posts com título, autor, score e descrição
- Edição de posts existentes
- Exclusão de posts
- Listagem de posts com erro de validação
- Formulário de criação e edição de posts com validação de erros

## Tecnologias utilizadas

- Ruby on Rails (framework)
- SQLite (banco de dados)
- HTML, CSS e JavaScript (front-end)

## Estrutura do projeto

- app/views/posts: contém as views para a criação, edição e listagem de posts
- app/controllers/posts_controller.rb: contém o controller para gerenciar as ações de criação, edição e exclusão de posts
- app/models/post.rb: contém o modelo de dados para os posts
- config/routes.rb: define as rotas para o projeto
- db/schema.rb: define a estrutura do banco de dados

## Como executar o projeto

1.  Clone o repositório em sua máquina local
1.  Execute bundle install para instalar as dependências
1.  Execute rails db:migrate para criar o banco de dados
1.  Execute rails server para iniciar o servidor de desenvolvimento
1.  Acesse http://localhost:3000 para visualizar o blog em funcionamento
