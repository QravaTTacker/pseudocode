algoritmo "semnome"
var
   n, m : inteiro

fun��o validar(a, b : inteiro) : logico
var
   x : logico
inicio
   escreva(" Validando... ")
   se (a > b) ent�o
      x <- Verdadeiro
      escreval(x)
      escreval()
      retorne Verdadeiro
   fimse
   x <- Falso
   escreval(x)
   escreval()
   retorne Falso
fimfun��o

inicio
   escreva(" N = ")
   leia(n)
   escreva(" M = ")
   leia(m)
   escreval()
   se (validar(n, m) = Verdadeiro) ent�o
      escreval(" N � maior que M")
   sen�o
      escreval(" N N�O � maior que M")
   fimse
fimalgoritmo