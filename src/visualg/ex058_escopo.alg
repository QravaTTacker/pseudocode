algoritmo "Escopo"
var
   L : inteiro
procedimento local(B : inteiro)
var
   C : inteiro
inicio
   B <- B + 4
   C <- B - 5
   escreval("Local:", L, B, C)
fimprocedimento
inicio
   L <- 13
   local(L)
   escreval("Global:", L, B, C)
fimalgoritmo