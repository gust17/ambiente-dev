# Projeto Laravel e Vue com Docker

Este repositório configura um backend Laravel e um frontend Vue usando Docker. A aplicação Laravel está exposta na porta 8089 e a aplicação Vue está exposta na porta 8088.

## Instruções de Configuração

### Pré-requisitos

- Docker
- Docker Compose

### Passos

1. **Clone o repositório:**

    ```sh
    git clone <url-do-repositorio>
    cd project-root
    ```

2. **Garanta que o script `init.sh` tenha permissões de execução:**

    ```sh
    chmod +x init.sh
    ```

3. **Copie o arquivo `.env.example` para `.env`:**

    ```sh
    cp .env.example .env
    ```

4. **Construa e inicie os contêineres Docker:**

    ```sh
    docker-compose build --no-cache
    docker-compose up
    ```

### Tratando Repositórios

#### Laravel

- **Se você tiver um repositório Laravel:**

    1. Defina a variável de ambiente `LARAVEL_REPO` com a URL do repositório.
    2. Defina a variável de ambiente `LARAVEL_PROJECT_NAME` com o nome do seu projeto.
    3. O script `init.sh` irá clonar o repositório, instalar as dependências e configurar o ambiente.

- **Se você não tiver um repositório Laravel:**

    1. Defina a variável de ambiente `LARAVEL_PROJECT_NAME` com o nome desejado para o projeto.
    2. O script `init.sh` irá criar um novo projeto Laravel usando o Composer.

#### Vue

- **Se você tiver um repositório Vue:**

    1. Defina a variável de ambiente `VUE_REPO` com a URL do repositório.
    2. Defina a variável de ambiente `VUE_PROJECT_NAME` com o nome do seu projeto.
    3. O script `init.sh` irá clonar o repositório e instalar as dependências.

- **Se você não tiver um repositório Vue:**

    1. Defina a variável de ambiente `VUE_PROJECT_NAME` com o nome desejado para o projeto.
    2. O script `init.sh` irá criar um novo projeto Vue usando o Vue CLI.

### Variáveis de Ambiente

Defina as seguintes variáveis de ambiente no seu arquivo `.env` ou no seu shell:

```sh
LARAVEL_PROJECT_NAME=nome_do_seu_projeto_laravel
LARAVEL_REPO=url_do_seu_repositorio_laravel # Deixe vazio se você não tiver um repositório

VUE_PROJECT_NAME=nome_do_seu_projeto_vue
VUE_REPO=url_do_seu_repositorio_vue # Deixe vazio se você não tiver um repositório
