#!/bin/bash

# Escreva um script que receba como parâmetro um nome e crie um arquivo vazio com este nome. Em seguida solicite ao usuário quem deve ser o novo dono e grupo do arquivo e faça as devidas alterações.

if [ -z "$1" ]; then
  echo "Você precisa passar o nome do arquivo como parâmetro."
  exit 1
fi

touch "$1"

echo "Digite o nome do novo dono do arquivo: "
read novo_dono

echo "Digite o nome do novo grupo do arquivo: "
read novo_grupo

sudo chown $novo_dono:$novo_grupo "$1"

# verificando se as alterações foram feitas

ls -l "$1"