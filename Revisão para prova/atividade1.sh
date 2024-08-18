#!/bin/bash

# Faça um bash shell script chamado mywho que aceita uma string como parâmetro. O script deverá indicar se existe um utilizador atual do sistema cujo username contêm a string.

if [ -z "$1" ]; then
  echo "Você deve passar uma string como parâmetro."
  exit 1
fi

string=$1

echo "A string passada foi: $string"

if who | grep -q "$1"; then
  echo "Existe um utilizador atual do sistema cujo username contém a string."
else
  echo "Não existe um utilizador atual do sistema cujo username contém a string."
fi