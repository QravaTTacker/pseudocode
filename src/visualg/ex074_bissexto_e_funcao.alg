algoritmo "Bissexto e Função"
var
   ano, i : inteiro
função bissexto(a : inteiro) : inteiro
inicio
   se ((a%4 = 0) e (a%100 <> 0) ou (a%400 = 0)) então
      retorne 1
   senão
      retorne 0
   fimse
fimfunção
inicio
   escreva(" Informe um ano: ")
   leia(ano)
   se (bissexto(ano) = 1) então
      escreval(" ", ano:1:0, " é bissexto!")
   senão
      escreval(" ", ano:1:0 , " não é bissexto!")
   fimse
fimalgoritmo