algoritmo "Sequ�ncia de Fibonacci"
var
   i, fib, x, y : inteiro
inicio

   fib <- 0
   x <- 1
   y <- 0
   para i := 1 at� 15 fa�a
      escreva(fib)
      fib <- x + y
      x <- y
      y <- fib
   fimpara

fimalgoritmo