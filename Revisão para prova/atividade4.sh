#!/bin/bash
# Script para criar um arquivo sem permissão de escrita

# Verifica se um parâmetro foi passado
if [ -z "$1" ]; then
    echo "Uso: $0 <nome_do_arquivo>"
    exit 1
fi

# Atribui o parâmetro à variável FILENAME
FILENAME="$1"

# Verifica se o arquivo já existe
if [ -e "$FILENAME" ]; then
    echo "Alerta: O arquivo '$FILENAME' já existe."
    exit 1
fi

# Cria o arquivo
touch "$FILENAME"

# Remove a permissão de escrita do arquivo
chmod a-w "$FILENAME"

echo "Arquivo '$FILENAME' criado sem permissão de escrita."