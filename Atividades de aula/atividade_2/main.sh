#!/bin/bash

# Escreva um script que seja capaz de dizer o número de linhas e palavras de um determinado arquivo, passado pela linha de comando com parâmetro.

if [ -z "$1" ]; then
    echo "Você precisa passar o nome do arquivo como parâmetro."
    exit 1
fi

linhas=$(wc -l < "$1")
palavras=$(wc -w < "$1")

echo "O arquivo '$1' tem $linhas linhas e $palavras palavras."
