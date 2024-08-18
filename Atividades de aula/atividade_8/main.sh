#!/bin/bash

# A fim de monitorar algumas informações em um computador com sistema Linux, seu chefe solicitou a criação de um script em shell. Entre as informações que devem ser coletadas estão os dados da CPU e da memória, os usuários conectados, a hora atual e o tempo que o computador está ligado. Como este problema pode ser resolvido?

echo "Informações da CPU:" 
lscpu

echo "Informações da Memória:" 
free -h

echo "Usuários conectados:" 
who

echo "Hora atual:" 
date

echo "Tempo que o computador está ligado:" 
uptime