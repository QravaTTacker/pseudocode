algoritmo "Ano Bissexto"
var
   ano:inteiro
inicio
   escreva("Informe um ano: ")
   leia(ano)
   escreval
   se(ano%4=0)e(ano%100<>0)ent�o
      escreval("� bissexto")
   sen�o
      se(ano%4=0)(ano%100=0)e(ano%400=0)ent�o
         escreval("� bissexto")
      sen�o
         escreval("N�o � bissexto")
      fimse
   fimse
fimalgoritmo