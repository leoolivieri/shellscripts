#!/bin/bash

nome="Leonardo"
saldo=1000

while true
do
    clear

    echo "================================"
    echo "       CAIXA ELETRÔNICO"
    echo "================================"
    echo "Cliente: $nome"
    echo "================================"
    echo "1 - Consultar saldo"
    echo "2 - Depositar"
    echo "3 - Sacar"
    echo "4 - Extrato"
    echo "5 - Sair"
    echo "================================"
    read -p "Digite uma opção: " opcao

    case $opcao in
        1)
            echo ""
            echo "Saldo atual: R$ $saldo"
            read -p "Pressione ENTER para continuar..."
            ;;
        2)
            echo ""
            read -p "Valor para depósito: R$ " deposito

            if [ "$deposito" -gt 0 ]; then
                saldo=$((saldo + deposito))
                echo "Depósito realizado com sucesso!"
            else
                echo "Valor inválido!"
            fi

            read -p "Pressione ENTER para continuar..."
            ;;
        3)
            echo ""
            read -p "Valor para saque: R$ " saque

            if [ "$saque" -le "$saldo" ] && [ "$saque" -gt 0 ]; then
                saldo=$((saldo - saque))
                echo "Saque realizado com sucesso!"
            else
                echo "Saldo insuficiente ou valor inválido!"
            fi

            read -p "Pressione ENTER para continuar..."
            ;;
        4)
            echo ""
            echo "========== EXTRATO =========="
            echo "Cliente: $nome"
            echo "Saldo atual: R$ $saldo"
            echo "============================="
            read -p "Pressione ENTER para continuar..."
            ;;
        5)
            echo "Encerrando sistema..."
            break
            ;;
        *)
            echo "Opção inválida!"
            read -p "Pressione ENTER para continuar..."
            ;;
    esac
done
