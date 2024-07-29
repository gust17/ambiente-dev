
# 🐳 Projeto Laravel e Vue com Docker

![Docker](https://img.shields.io/badge/Docker-2496ED?style=for-the-badge&logo=docker&logoColor=white)
![Laravel](https://img.shields.io/badge/Laravel-FF2D20?style=for-the-badge&logo=laravel&logoColor=white)
![Vue.js](https://img.shields.io/badge/Vue.js-35495E?style=for-the-badge&logo=vue.js&logoColor=4FC08D)

Este repositório configura um backend Laravel e um frontend Vue usando Docker. A aplicação Laravel está exposta na porta 8089 e a aplicação Vue está exposta na porta 8088.

---

## 📋 Instruções de Configuração

### 🛠️ Pré-requisitos

- [Docker](https://www.docker.com/)
- [Docker Compose](https://docs.docker.com/compose/)

### 🚀 Passos

1. **Clone o repositório:**

    ```sh
    git clone https://github.com/gust17/ambiente-dev.git
    cd ambiente-dev
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

---

## 📂 Estrutura do Projeto

```plaintext
project-root/
│
├── docker-compose.yml
├── docker-compose.override.yml
├── init.sh
├── laravel/
│   └── Dockerfile
└── vue/
    └── Dockerfile
```

---

## 🌟 Tratando Repositórios

### Laravel

- **Se você tiver um repositório Laravel:**

    1. Defina a variável de ambiente `LARAVEL_REPO` com a URL do repositório.
    2. Defina a variável de ambiente `LARAVEL_PROJECT_NAME` com o nome do seu projeto.
    3. O script `init.sh` irá clonar o repositório, instalar as dependências e configurar o ambiente.

- **Se você não tiver um repositório Laravel:**

    1. Defina a variável de ambiente `LARAVEL_PROJECT_NAME` com o nome desejado para o projeto.
    2. O script `init.sh` irá criar um novo projeto Laravel usando o Composer.

### Vue

- **Se você tiver um repositório Vue:**

    1. Defina a variável de ambiente `VUE_REPO` com a URL do repositório.
    2. Defina a variável de ambiente `VUE_PROJECT_NAME` com o nome do seu projeto.
    3. O script `init.sh` irá clonar o repositório e instalar as dependências.

- **Se você não tiver um repositório Vue:**

    1. Defina a variável de ambiente `VUE_PROJECT_NAME` com o nome desejado para o projeto.
    2. O script `init.sh` irá criar um novo projeto Vue usando o Vue CLI.

---

## 🛠️ Variáveis de Ambiente

Defina as seguintes variáveis de ambiente no seu arquivo `.env` ou no seu shell:

```sh
LARAVEL_PROJECT_NAME=nome_do_seu_projeto_laravel
LARAVEL_REPO=url_do_seu_repositorio_laravel # Deixe vazio se você não tiver um repositório

VUE_PROJECT_NAME=nome_do_seu_projeto_vue
VUE_REPO=url_do_seu_repositorio_vue # Deixe vazio se você não tiver um repositório
```

---

## 🌐 Acessando as Aplicações

- **Aplicação Laravel:** Abra seu navegador e vá para `http://localhost:8089`
- **Aplicação Vue:** Abra seu navegador e vá para `http://localhost:8088`

---

## 🐞 Solução de Problemas

- **Verificar logs dos contêineres:**

    ```sh
    docker-compose logs laravel
    docker-compose logs vue
    ```

- **Acessar o contêiner Laravel:**

    ```sh
    docker-compose exec laravel /bin/bash
    ```

- **Acessar o contêiner Vue:**

    ```sh
    docker-compose exec vue /bin/bash
    ```

---

## 📄 Licença

Distribuído sob a licença MIT. Veja `LICENSE` para mais informações.

---

## 🤝 Contribuição

Contribuições são bem-vindas! Por favor, abra uma issue ou envie um pull request para contribuir.

---

## 📞 Contato

Gustavo - [Seu Email](mailto:seuemail@example.com)

Link do Projeto: [https://github.com/gust17/ambiente-dev](https://github.com/gust17/ambiente-dev)
