algoritmo "Fun��o Com Par�metros"
var
   P, S : real

fun��o msg(x, y : real) : caracter
inicio
   se ((x + y)/2 >= 7) ent�o
      retorne "Aprovado"
   sen�o
       retorne "Reprovado"
   fimse
fimfun��o

inicio
   escreva("1� Nota: ")
   leia(P)
   escreva("2� Nota: ")
   leia(S)
   escreval(msg(P, S))
fimalgoritmo