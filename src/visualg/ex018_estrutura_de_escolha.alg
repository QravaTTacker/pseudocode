Algoritmo "Estrutura de escolha"
var
   valor : real
   caso_ : inteiro
inicio

   escreval("Digite [1] para fazer uma doa��o (R$).")
   escreval("Digite [2] para sair.")
   escreval
   escreva("Escolha de caso: ")
   leia (caso_)

   escrevaL("--------------------------------------")
   escolha caso_
   Caso 1
      escreva("Informe o valor da doa��o: ")
      leia(valor)
      escreval("Obrigado pela doa��o de R$", valor:5:2, "!")
   Caso 2
      escreval("Obrigado pela aten��o! :)")
   outrocaso
      escreval("               Falso :/            ")
   fimescolha
   escrevaL("--------------------------------------")

fimalgoritmo
