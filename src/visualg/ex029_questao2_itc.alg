algoritmo "Quest�o 02 - ITC"
var
   valor, contador, divisor : inteiro
inicio

   contador <- 0
   valor <- 0
   divisor <- 0

   escreva("Informe um valor inteiro: ")
   leia(valor)
   escreval

   se (valor >= 0) ent�o

      contador <- valor
      enquanto (contador >= 0) fa�a

         divisor <- valor % contador
         
         se (divisor = 0) ent�o
            escreval(contador, " � divisor de", valor)
         sen�o

         fimse

         contador <- contador - 1

      fimenquanto

   sen�o
      escreval("Falso")
   fimse

fimalgoritmo