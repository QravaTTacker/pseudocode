algoritmo "Produto e Pot�ncia Recursiva"
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
fun��o mult(n, v : inteiro) : inteiro
inicio
   se(v = 1) ent�o
      retorne n
   sen�o
      retorne n + mult(n, v-1)
   fimse
fimfun��o
funcao pote(n, v : inteiro) : inteiro
inicio
   se(v = 0) ent�o
      retorne 1
   sen�o
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