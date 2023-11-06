Algoritmo "Estrutura de escolha"
var
   valor : real
   caso_ : inteiro
inicio

   escreval("Digite [1] para fazer uma doação (R$).")
   escreval("Digite [2] para sair.")
   escreval
   escreva("Escolha de caso: ")
   leia (caso_)

   escrevaL("--------------------------------------")
   escolha caso_
   Caso 1
      escreva("Informe o valor da doação: ")
      leia(valor)
      escreval("Obrigado pela doação de R$", valor:5:2, "!")
   Caso 2
      escreval("Obrigado pela atenção! :)")
   outrocaso
      escreval("               Falso :/            ")
   fimescolha
   escrevaL("--------------------------------------")

fimalgoritmo
