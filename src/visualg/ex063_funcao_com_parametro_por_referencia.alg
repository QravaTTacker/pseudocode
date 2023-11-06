algoritmo "Função Com Parâmetro Por Referência"
var
   f1, f2, i : inteiro

função fibonacci (var x, y : inteiro) : inteiro
var
   Fib : inteiro
inicio
   Fib := x + y
   x := y
   y := Fib
   retorne x
fimfunção

inicio
   f1 := 0
   f2 := 1
   para i := 3 até 10 faça
      escreva(fibonacci(f1, f2))
   fimpara
   escreval
fimalgoritmo