#!/bin/bash

PROJECT_TYPE=$1

# Função para criar um novo projeto Laravel
create_laravel_project() {
  cd /var/www/laravel
  if [ -d "$LARAVEL_PROJECT_NAME" ]; then
    rm -rf "$LARAVEL_PROJECT_NAME"
  fi
  composer create-project --prefer-dist laravel/laravel $LARAVEL_PROJECT_NAME
  cd $LARAVEL_PROJECT_NAME
  cp .env.example .env
  php artisan key:generate
  php artisan migrate
}

# Função para clonar um repositório Laravel
clone_laravel_repo() {
  if [ -d "/var/www/laravel/$LARAVEL_PROJECT_NAME" ]; then
    rm -rf /var/www/laravel/$LARAVEL_PROJECT_NAME
  fi
  git clone $LARAVEL_REPO /var/www/laravel/$LARAVEL_PROJECT_NAME
  cd /var/www/laravel/$LARAVEL_PROJECT_NAME
  composer install
  cp .env.example .env
  php artisan key:generate
  php artisan migrate
}

# Função para criar um novo projeto Vue
create_vue_project() {
  cd /app/vue
  if [ -d "$VUE_PROJECT_NAME" ]; then
    rm -rf "$VUE_PROJECT_NAME"
  fi
  npm install -g @vue/cli
  vue create -d $VUE_PROJECT_NAME
}

# Função para clonar um repositório Vue
clone_vue_repo() {
  if [ -d "/app/vue/$VUE_PROJECT_NAME" ]; then
    rm -rf /app/vue/$VUE_PROJECT_NAME
  fi
  git clone $VUE_REPO /app/vue/$VUE_PROJECT_NAME
}

# Decidir se cria um novo projeto ou clona um repositório
if [ "$PROJECT_TYPE" == "laravel" ]; then
  if [ -z "$LARAVEL_REPO" ]; then
    create_laravel_project
  else
    clone_laravel_repo
  fi
elif [ "$PROJECT_TYPE" == "vue" ]; then
  if [ -z "$VUE_REPO" ]; then
    create_vue_project
  else
    clone_vue_repo
  fi
fi
