# Laravel and Vue Project with Docker

This repository sets up a Laravel backend and a Vue frontend using Docker. The Laravel application is exposed on port 8089, and the Vue application is exposed on port 8088.

## Setup Instructions

### Prerequisites

- Docker
- Docker Compose

### Steps

1. **Clone the repository:**

    ```sh
    git clone <repository-url>
    cd project-root
    ```

2. **Ensure the `init.sh` script has execute permissions:**

    ```sh
    chmod +x init.sh
    ```

3. **Build and start the Docker containers:**

    ```sh
    docker-compose build --no-cache
    docker-compose up
    ```

### Handling Repositories

#### Laravel

- **If you have a Laravel repository:**

    1. Set the `LARAVEL_REPO` environment variable to the repository URL.
    2. Set the `LARAVEL_PROJECT_NAME` environment variable to your project name.
    3. The `init.sh` script will clone the repository, install dependencies, and set up the environment.

- **If you don't have a Laravel repository:**

    1. Set the `LARAVEL_PROJECT_NAME` environment variable to your desired project name.
    2. The `init.sh` script will create a new Laravel project using Composer.

#### Vue

- **If you have a Vue repository:**

    1. Set the `VUE_REPO` environment variable to the repository URL.
    2. Set the `VUE_PROJECT_NAME` environment variable to your project name.
    3. The `init.sh` script will clone the repository and install dependencies.

- **If you don't have a Vue repository:**

    1. Set the `VUE_PROJECT_NAME` environment variable to your desired project name.
    2. The `init.sh` script will create a new Vue project using Vue CLI.

### Environment Variables

Set the following environment variables in your `.env` file or in your shell:

```sh
LARAVEL_PROJECT_NAME=your_laravel_project_name
LARAVEL_REPO=your_laravel_repo_url # Leave empty if you don't have a repository

VUE_PROJECT_NAME=your_vue_project_name
VUE_REPO=your_vue_repo_url # Leave empty if you don't have a repository
