algoritmo "Questão 02 - ITC"
var
   valor, contador, divisor : inteiro
inicio

   contador <- 0
   valor <- 0
   divisor <- 0

   escreva("Informe um valor inteiro: ")
   leia(valor)
   escreval

   se (valor >= 0) então

      contador <- valor
      enquanto (contador >= 0) faça

         divisor <- valor % contador
         
         se (divisor = 0) então
            escreval(contador, " é divisor de", valor)
         senão

         fimse

         contador <- contador - 1

      fimenquanto

   senão
      escreval("Falso")
   fimse

fimalgoritmo