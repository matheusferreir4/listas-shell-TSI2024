#!/bin/bash

 # crie um script que mostre na tela todos os parâmetros recebidos na linha de comando, contando-os

 if [ $# -eq 0 ]; then
   echo "Você precisa passar pelo menos um parâmetro."
   exit 1
 fi

 echo "parâmetros recebidos: $#"

 for param in "$@"; do
   echo "$param"
 done

 echo "Números de parâmetros: $#"