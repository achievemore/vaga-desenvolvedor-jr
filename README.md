![AchieveMore](https://repository-images.githubusercontent.com/206639778/70226b80-d327-11e9-9bc8-b1024837da4c)

# DESENVOLVEDOR JR

## Demonstração

[![asciicast](docs/demonstracao.svg)]()

## Teste para a vaga de desenvolvedor Jr

Siga o passo a passo abaixo para a instalação e execução do código de teste para a vaga de desenvolvedor Jr.

### Detalhes do teste:

O código fonte desse teste está escrito em Ruby, usando um scaffold de uma app básica do framework Rails. O teste se baseia em instalar a aplicação e executa-lá em seu ambiente de desenvolvimento, escrever alguns testes que estão pendentes e corrigir outros conforme alertas do console.

O candidato deve dar **fork** neste repositório e após o termino do desenvolvimento, realizar um **pull request** para análise do time. O tempo para realizar o teste será de 48 horas a partir do momento que realizar o fork do projeto.

## Passos para instalação:

#### Requerimentos:

* Github
* Ruby >= 2.5
* Rails
* Terminal (Command prompt)

#### Conhecimentos necessários:

* Ruby
* Ruby on Rails
* RSPEC
* Git / Github
* Expressão regular (diferencial)

### 1. Clonar Repositório

  1.1 Para baixar o repositório, execute:
  ```bash
  $ git clone git@github.com:achievemore/vaga-desenvolvedor-jr.git
  ```

### 2. Fazer Build da Imagem Docker (ou executar da maneira que achar desejável)

  2.1 Para entrar na pasta do projeto, digite:
  ```bash
  $ cd vaga-desenvolvedor-jr
  ```

  2.2 Para fazer a build da Imagem, execute:
  ```bash
  $ docker build -t achievemore-ruby .
  ```

### 3. Provisionamento do Rails

  3.1 Digite o comando abaixo, então tecle enter para criar um container e acessar o seu shell (caso esteja usando docker):
  ```bash
  $ docker run --rm -v `pwd`:/app -w /app -it achievemore-ruby /bin/sh
  ```

  3.2 Para criar as tabelas de teste, execute:
  ```bash
  $ bundle exec rails db:migrate
  ```

### 4. Rodar os Testes

  4.1 Agora rode os testes da seguinte forma:
  ```bash
  $ bundle exec rspec
  ```

## Recomendações finais

* Não iremos considerar entregas após o prazo combinado;
* O horário do pull-request ou do seu último commit será o horário considerado para a entrega;
* Nossa avaliação não será apenas por fazer todos os testes, daremos grande valor para sua criatividade e possíveis melhorias do código.
