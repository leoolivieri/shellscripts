#!/usr/bin/env bash

case $1 in 
	start)
		echo "Iniciando o programa CaixaVerso, deve ser mostrada"
	;;
	stop)
                echo "Parando o programa CaixaVerso, deve ser mostrada"
        ;;
	*)
                echo "Por favor, use o nome do programa start | stop"
        ;;
esac
