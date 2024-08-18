#!/bin/bash

# Crie um script que crie um diretório chamado AULASO, em seguida solicite ao usuário um novo nome para este diretório e renomeie-o.

mkdir AULASO

echo "Digite o novo nome do diretório: "
read novo_nome

mv AULASO $novo_nome