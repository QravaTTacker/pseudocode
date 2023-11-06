algoritmo "Fibonacci Com Rotina"
var
   X, Y, i : inteiro
procedimento Fibonacci(var A, B: inteiro)
var
   F : inteiro
inicio
   F := A + B
   escreva(F)
   A := B
   B := F
fimprocedimento
inicio
   X <- 0
   escreva(X)
   Y <- 1
   escreva(Y)
   para i := 1 até 10 faça
      Fibonacci(X, Y)
   fimpara
fimalgoritmo