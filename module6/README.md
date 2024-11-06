# Web Scraping com Nokogiri

Este é um projeto em Ruby que utiliza a gem 'nokogiri' para realizar web scraping em um site específico.

## Descrição do Projeto

Este projeto é um exemplo de como utilizar a gem 'nokogiri' para extrair informações de um site web. O script `web_scrapping_with_nokogiri.rb` utiliza a gem 'nokogiri' para parsear o HTML de um site e extrair informações específicas.

## Requisitos

- Docker instalado na máquina
- Ruby 3.3.5 (ou superior)

## Passo a Passo para Rodar o Projeto com Docker

1. Clone o repositório do projeto:
   ```bash
   git clone https://github.com/fhmurakami/dio-ruby-developer/
   ```
1. Acesse o diretório do projeto:
   ```bash
   cd module 6
   ```
1. Execute o comando para criar e executar o container:
   ```bash
   docker-compose run app
   ```
1. O container será criado e você será apresentado com um prompt de comando dentro do container.
1. Execute o comando para executar o script Ruby:
   ```bash
   ruby web_scrapping_with_nokogiri.rb
   ```
1. O script Ruby será executado e você verá a saída do programa com as informações extraídas do site.

### Observações

- Certifique-se de que o Docker esteja instalado e configurado corretamente na sua máquina.
- O script web_scrapping_with_nokogiri.rb é um exemplo de como utilizar a gem 'nokogiri' para web scraping e pode ser modificado para atender às suas necessidades específicas.

## Rodando o Projeto sem Docker

Se você não quiser utilizar o Docker, você pode rodar o projeto diretamente no seu ambiente local. Aqui estão os passos para rodar o projeto sem Docker:

1. Clone o repositório do projeto:
   ```bash
   git clone https://github.com/fhmurakami/dio-ruby-developer/
   ```
1. Acesse o diretório do projeto:
   ```bash
   cd module 6
   ```
1. Instale a gem 'nokogiri' e 'net/http' no seu ambiente Ruby:
   ```bash
   gem install nokogiri net-http
   ```
1. Execute o comando para rodar o script Ruby:
   ```bash
   ruby web_scrapping_with_nokogiri.rb
   ```
