#!/bin/bash

# Escrever um script que recebe uma temperatura em graus Centígrados, como parâmetro, e a exiba convertida em graus Fahrenheit. A fórmula de conversão é F=(9C+160)/5, onde F é a temperatura em Fahrenheit e C é a temperatura em Centígrados

if [ -z "$1" ]; then
  echo "Você precisa passar uma temperatura em graus celcius como parâmetro."
  exit 1
fi

# Verifica se o parâmetro é um número
if ! [[ "$1" =~ ^-?[0-9]+(\.[0-9]+)?$ ]]; then
  echo "O valor '$1' não é um número válido."
  exit 1
fi

celsius=$1
fahrenheit=$(( (9 * celsius + 160) / 5 ))

echo "$celsius graus Celsius é igual a $fahrenheit graus Fahrenheit."