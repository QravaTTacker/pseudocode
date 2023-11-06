algoritmo "Sequência de Fibonacci"
var
   i, fib, x, y : inteiro
inicio

   fib <- 0
   x <- 1
   y <- 0
   para i := 1 até 15 faça
      escreva(fib)
      fib <- x + y
      x <- y
      y <- fib
   fimpara

fimalgoritmo