algoritmo "Questão 01 - ITC"
var
   n, soma: inteiro
inicio

   n <- 0
   soma <- 0

   escreva("Digite um valor inteiro e positivo: ")
   leia(n)
   escreval

   se (n >= 0) então

      enquanto (n >= 0) faça

         escreva(n, " ... ")
         soma <- soma + n
         n <- n - 1

      fimenquanto
      escreval
      escreval

      escreval("O resultado da soma total foi de:", soma)

   senão

      escreval("Informe um valor positivo")

   fimse

fimalgoritmo