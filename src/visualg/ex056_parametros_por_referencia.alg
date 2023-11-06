algoritmo "Parâmetros Por Referência"
var
   A : inteiro
procedimento alterar(var h : inteiro)
inicio
   escreva(" ", h)
   h <- h + 1
fimprocedimento
inicio
   A <- 1
   enquanto (A <= 10) faça
      alterar(A)
   fimenquanto
fimalgoritmo