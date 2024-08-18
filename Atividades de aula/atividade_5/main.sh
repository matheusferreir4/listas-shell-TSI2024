#!/bin/bash

# Faça um script que tenha como entrada um valor passado por parâmetro que definirá quantos valores deverão ser informados pelo usuário. Em seguida, calcular e imprimir: A média dos números lidos; O maior número; O menor número.

if [ -z "$1" ]; then
  echo "Você precisa passar um valor como parâmetro."
  exit 1
fi

if ! [[ "$1" =~ ^[0-9]+$ ]]; then
  echo "O valor '$1' não é um número inteiro positivo."
  exit 1
fi

quantidade=$1
soma=0
maior=-99999
menor=99999

for ((i=1; i<=$quantidade; i++)); do
    echo -n "Digite o $iº número: "
    read numero

  # vererificando se o número inserido é um número inteiro positivo
  if ! [[ "$numero" =~ ^-?[0-9]+$ ]]; then
    echo "O valor '$numero' não é um número inteiro positivo."
    exit 1
  fi

# atualizando a soma
soma=$((soma + numero))

# atualizando o maior número
if [ "$numero" -gt "$maior" ]; then
    maior=$numero
fi

# atualizando o menor número
if [ "$numero" -lt "$menor" ]; then
    menor=$numero
fi

done

# calculando a média
media=$((soma / quantidade))

echo "A média dos números é: $media"
echo "O maio número é: $maior"
echo "O menor número é: $menor"
