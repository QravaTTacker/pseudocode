algoritmo "Produto e Potência Recursiva"
var
   x, y : inteiro
procedimento msg()
var
   i : inteiro
inicio
   para i de 1 ate 15 faca
      escreva("-")
   fimpara
   escreval
fimprocedimento
função mult(n, v : inteiro) : inteiro
inicio
   se(v = 1) então
      retorne n
   senão
      retorne n + mult(n, v-1)
   fimse
fimfunção
funcao pote(n, v : inteiro) : inteiro
inicio
   se(v = 0) então
      retorne 1
   senão
      retorne n * pote(n, v-1)
   fimse
fimfuncao
inicio
   msg()
   escreval("     X * Y")
   escreval
   escreva(" X = ")
   leia(x)
   escreva(" Y = ")
   leia(y)
   escreval
   escreval(x, " *", y, " =", mult(y, x))
   msg()
   escreval("     X ^ Y")
   escreval
   escreva(" X = ")
   leia(x)
   escreva(" Y = ")
   leia(y)
   escreval
   escreval(x, " ^", y, " =", pote(x, y))
   msg()
fimalgoritmo