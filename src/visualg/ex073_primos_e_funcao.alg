algoritmo "Primos e Fun��o"
var
   valor : inteiro
fun��o primoN(valor : inteiro) : inteiro
var
   i, c : inteiro
inicio
   c <- 0
   para i <- 2 at� valor fa�a
      se (valor%i = 0) ent�o
         c <- c + 1
      fimse
   fimpara
   se (c = 1) ent�o
      retorne 1
   sen�o
      retorne 0
   fimse
fimfun��o
inicio
   escreva(" Informe um valor inteiro: ")
   leia(valor)
   se (primoN(valor) = 1) ent�o
      escreval(" O n�mero ", valor:1:0, " � primo!")
   sen�o
      escreval(" O n�mero ", valor:1:0, " n�o � primo!")
   fimse
fimalgoritmo