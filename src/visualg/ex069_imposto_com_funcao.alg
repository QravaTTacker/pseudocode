algoritmo "Imposto Com Fun��o"
var
   valor, taxa : real
fun��o imposto(valor, taxa : real) : real
inicio
   retorne valor + valor*(taxa/100)
fimfun��o
inicio
   escreval("---------------------------------------")
   escreva(" Entre com o valor do protudo: ")
   leia(valor)
   escreva(" Entre com a taxa de imposto: ")
   leia(taxa)
   escreval("---------------------------------------")
   escreval(" O valor ficar�: ", imposto(valor, taxa):1:2, " reais!")
   escreval("---------------------------------------")
fimalgoritmo