algoritmo "Escolha de doa��es"
var
   D : inteiro
inicio

   escreval("-----------------------------------")
   escreval("  Digite [1] para doa��o de R$ 10  ")
   escreval("  Digite [2] para doa��o de R$ 20  ")
   escreval("  Digite [3] para doa��o de R$ 50  ")
   escreval("  Digite [4] para doa��o de R$ 100 ")
   escreval("  Digite [5] para sair             ")
   escreval("-----------------------------------")
   escreva("Resposta: ")
   leia(D)
   escreval
   escolha D
   caso 1
      escreval("Obridado pela doa��o de R$ 10")
   caso 2
      escreval("Obridado pela doa��o de R$ 20")
   caso 3
      escreval("Obridado pela doa��o de R$ 50")
   caso 4
      escreval("Obridado pela doa��o de R$ 100")
   caso 5
      escreval("Obridado pela aten��o!")
   outrocaso
      escreval("Falso :/")
   fimescolha
   escreval("-----------------------------------")
   
fimalgoritmo