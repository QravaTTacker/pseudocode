algoritmo "Fibonacci Recursivo"
var
   termo, i, a, b, c : inteiro

fun��o fibonacci(F : inteiro) : inteiro
inicio
   se ((F = 0) ou (F = 1)) entao
      retorne F
   senao
      retorne fibonacci(F-1) + fibonacci(F-2)
   fimse
fimfun��o

inicio
   a := 0
   b := 1
   c := 0
   escreva(" N-�simo termo: ")
   leia(termo)
   escreval
   para i de 0 ate termo faca
      se (i = 0) ent�o
         escreva(" ", a:4:0)
      sen�o
         se (i = 1) ent�o
            escreva(" ", b:4:0)
         sen�o
            c := a + b
            escreva(" ", c:4:0)
            a := b
            b := c
         fimse
      fimse
      escreva("     ")
      escreva(" ", fibonacci(i):4:0)
      escreval
   fimpara
   escreval
fimalgoritmo