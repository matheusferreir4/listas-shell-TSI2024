#!/bin/bash

# Escrever um script que receba um valor inteiro positivo, como parâmetro, e exiba todos os valores anteriores ao número até chegar no 0. Para cada valor exiba a mensagem “PAR” ou “IMPAR” ou “NULO”, conforme o caso.

if [ -z "$1" ]; then
  echo "você precisa passar um valor como parâmetro."
  exit 1
fi

if [[ "$1" =~ ^-?[0-9]+$ ]]; then
  echo "O valor $1 é um número inteiro positivo."
else
  echo "O valor $1 não é um número inteiro positivo."
  exit 1
fi

numero=$1

while [ "$numero" -gt 0 ]; do
  if [ "$numero" -eq 0 ]; then
    echo "$numero: NULO"
  elif [ $((numero % 2)) -eq 0 ]; then
    echo "$numero: PAR"
  else
    echo "$numero: IMPAR"
  fi
  numero=$((numero - 1))
done