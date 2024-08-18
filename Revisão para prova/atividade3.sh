#!/bin/bash

# Verificar se um determinado usuário, informado como argumento, está utilizando o sistema no momento, retornando uma mensagem para ambos os casos (Caso o usuário não exista, deverá ser emitido um alerta). Em seguida, apresentar uma relação com os usuários atualmente logados e a quantidade, no seguinte formato: NAME LINE TIME usuario pts/0 2015-07-19 12:56 users=1

# Verifica se um parâmetro foi passado
if [ -z "$1" ]; then
    echo "Uso: $0 <nome_do_usuario>"
    exit 1
fi

# Atribui o parâmetro à variável USERNAME
USERNAME="$1"

# Verifica se o usuário existe no sistema
if ! id "$USERNAME" &>/dev/null; then
    echo "Alerta: O usuário '$USERNAME' não existe no sistema."
    exit 1
fi

# Verifica se o usuário está logado
if who | grep -q "^$USERNAME\b"; then
    echo "O usuário '$USERNAME' está logado no sistema."
else
    echo "O usuário '$USERNAME' não está logado no sistema."
fi

# Lista todos os usuários logados e a quantidade
echo "Usuários atualmente logados:"
who | awk '{print $1, $2, $3, $4}'
USERS_COUNT=$(who | wc -l)
echo "# users=$USERS_COUNT"