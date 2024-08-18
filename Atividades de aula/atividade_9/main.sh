#!/bin/bash

# Faça um script com o nome DESAFIO1.SH dentro do diretório pessoal do usuário aluno que pode ter duas funções diferentes. Ou criar um arquivo ou criar um diretório.

if [ -z "$1" ]; then
  echo "Você precisa passar um nome como parâmetro."
  exit 1
fi

# Solicita ao usuário que escolha entre criar um arquivo ou um diretório
echo "Digite '1' para criar um arquivo ou '2' para criar um diretório:"
read escolha

# Verifica a escolha do usuário e cria o arquivo ou diretório
if [ "$escolha" -eq 1 ]; then
  touch "$HOME/$1"
  echo "Arquivo '$1' criado no diretório pessoal."
elif [ "$escolha" -eq 2 ]; then
  mkdir "$HOME/$1"
  echo "Diretório '$1' criado no diretório pessoal."
else
  echo "Escolha inválida. Digite '1' para criar um arquivo ou '2' para criar um diretório."
  exit 1
fi