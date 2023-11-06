algoritmo "semnome"
var
   n, m : inteiro

função validar(a, b : inteiro) : logico
var
   x : logico
inicio
   escreva(" Validando... ")
   se (a > b) então
      x <- Verdadeiro
      escreval(x)
      escreval()
      retorne Verdadeiro
   fimse
   x <- Falso
   escreval(x)
   escreval()
   retorne Falso
fimfunção

inicio
   escreva(" N = ")
   leia(n)
   escreva(" M = ")
   leia(m)
   escreval()
   se (validar(n, m) = Verdadeiro) então
      escreval(" N é maior que M")
   senão
      escreval(" N NÃO é maior que M")
   fimse
fimalgoritmo