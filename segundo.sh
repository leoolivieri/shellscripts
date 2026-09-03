#!/usr/bin/env bash
#Crie um script em shell que verifique se o valor de uma determinada variável digitada é Caixa

#Se for, a mensagem: Você está no maior banco do pais, deverá ser mostrada, senão a seguinte mensagem devera ser mostrada: não 
#confiamos no Banco X, vem pra cá

#read é uma instrução que permite interacao com o usuario:

CX="Caixa"

read -p "Qual o nome do banco que você possui conta: " BANCO

if [ "$BANCO" == "$CX" ]
then 
	echo "Você está no maior banco do país, que é: $BANCO"
else 
	echo "Não confiamos no banco $BANCO, vem para cá."
fi
