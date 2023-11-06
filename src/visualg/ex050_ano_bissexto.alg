algoritmo "Ano Bissexto"
var
   ano:inteiro
inicio
   escreva("Informe um ano: ")
   leia(ano)
   escreval
   se(ano%4=0)e(ano%100<>0)então
      escreval("É bissexto")
   senão
      se(ano%4=0)(ano%100=0)e(ano%400=0)então
         escreval("É bissexto")
      senão
         escreval("Não é bissexto")
      fimse
   fimse
fimalgoritmo