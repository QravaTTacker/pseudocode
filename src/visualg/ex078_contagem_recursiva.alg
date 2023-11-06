algoritmo "Contagem Recursiva"
var
   lim : inteiro

procedimento contagemC(L : inteiro)
inicio
   se (L = 1) então
      escreva(" ", L)
   senão
      contagemC(L-1)
      escreva(" ", L)
   fimse
fimprocedimento

procedimento contagemD(L : inteiro)
inicio
   se (L = 1) entao
      escreva(" ", L)
   senao
      escreva(" ", L)
      contagemD(L-1)
   fimse
fimprocedimento

inicio
   escreva(" Valor limite de contagem: ")
   leia(lim)
   escreval
   contagemC(lim)
   escreval
   escreval
   contagemD(lim)
   escreval
fimalgoritmo