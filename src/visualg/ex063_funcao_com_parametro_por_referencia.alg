algoritmo "Fun��o Com Par�metro Por Refer�ncia"
var
   f1, f2, i : inteiro

fun��o fibonacci (var x, y : inteiro) : inteiro
var
   Fib : inteiro
inicio
   Fib := x + y
   x := y
   y := Fib
   retorne x
fimfun��o

inicio
   f1 := 0
   f2 := 1
   para i := 3 at� 10 fa�a
      escreva(fibonacci(f1, f2))
   fimpara
   escreval
fimalgoritmo