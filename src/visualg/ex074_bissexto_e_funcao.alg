algoritmo "Bissexto e Fun��o"
var
   ano, i : inteiro
fun��o bissexto(a : inteiro) : inteiro
inicio
   se ((a%4 = 0) e (a%100 <> 0) ou (a%400 = 0)) ent�o
      retorne 1
   sen�o
      retorne 0
   fimse
fimfun��o
inicio
   escreva(" Informe um ano: ")
   leia(ano)
   se (bissexto(ano) = 1) ent�o
      escreval(" ", ano:1:0, " � bissexto!")
   sen�o
      escreval(" ", ano:1:0 , " n�o � bissexto!")
   fimse
fimalgoritmo