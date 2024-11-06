FROM ruby:3.3.5

# Set the working directory to /app
WORKDIR /app

# Copiar o Gemfile e o Gemfile.lock para o container
COPY Gemfile* ./

# Instalar as gems
RUN bundle install

# Copiar o código do projeto para o container
COPY . .

# Definir o comando para executar o projeto
CMD ["bash"]