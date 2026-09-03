
#!/usr/bin/env bash
#Shebang = a primeira linha do seu script informa qual será o programa será usado para interpretar o script
#Exceto o shebang qualquer linha que possua # é tratada como comentário, não será executada
#Autor: Leonardo Souza Olivieri
#Name: primeiro.sh
#Date: 31/08/2026
#Version: 1.0

#Declarando a variavel BANCO com o valor  Caixa. BANCO é do tipo String
BANCO="Caixa"

#Declarando variavel SALARIO com valor 20000 do tipo INTEIRO
SALARIO=20000

# As aspas duplas transformam tudo em texto puro, exceto $ e \
echo "Eu trabalho no banco $BANCO, como Agente de Segurança ganho mais de $SALARIO."

# As aspas simples transformam tudo em texto puro.
echo 'Eu trabalho no banco $BANCO, como Agente de Segurança ganho mais de $SALARIO.'

NUMERO1=10
NUMERO2=20
NUMERO3=30

SOMA=$(( $NUMERO1 + $NUMERO2 + $NUMERO3))
MULT=$(( $NUMERO1 * $NUMERO2 * $NUMERO3))
SUBT=$(( $NUMERO1 - $NUMERO2 - $NUMERO3))

# O echo -e ativa a sintaxe de expressão regular do echo
echo -e "\nA Soma dos numeros é: $SOMA\n"
echo -e "\nA Multiplicacao dos numeros é: $MULT\n"
echo -e "\nA Subtracao dos numeros é: $SUBT\n"

COMANDO="ls -l"

echo -e"\nO valor da variavel COMANDO é: $COMANDO"

echo -e "\nA execucao da variavel COMANDO gera o seguinte resultado:"
$COMANDO

SAIDACOMANDO=$( $COMANDO)

echo -e "\nA variavel SAIDACOMANDO, captura o valor gerado na execucao do comando, foi: "
echo $SAIDACOMANDO
