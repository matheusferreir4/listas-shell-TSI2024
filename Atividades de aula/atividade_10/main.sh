#!/bin/bash

# Faça um script chamado DESAFIO2.SH que limpa a tela, crie um diretório chamado SHELL e que seja criado dentro de SHELL uma quantidade de arquivos textos que deverá ser informado por parâmetro. Sendo o nome dos arquivos SO1.txt, SO3.txt, SO5.txt, SO7.txt, SO9.txt, etc….

# Limpa a tela
clear

# Verifica se o parâmetro foi passado
if [ -z "$1" ]; then
  echo "Você precisa passar a quantidade de arquivos como parâmetro."
  exit 1
fi

# Verifica se o parâmetro é um número inteiro positivo
if ! [[ "$1" =~ ^[0-9]+$ ]]; then
  echo "O valor '$1' não é um número inteiro positivo."
  exit 1
fi

# Cria o diretório SHELL
mkdir -p SHELL

# Cria os arquivos dentro do diretório SHELL
for (( i=1; i<=$1*2; i+=2 )); do
  touch "SHELL/SO$i.txt"
done

echo "Foram criados $1 arquivos no diretório SHELL."
