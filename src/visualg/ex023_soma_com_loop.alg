algoritmo "Soma com la�o"
var
   cont, q, soma, valor: inteiro
inicio

   cont <- 1
   q <- 0
   valor <- 0
   soma <- 0

   escreva("Quantas somas deseja? ")
   leia(q)
   escreval
   escreval("-------------------------")

   enquanto (cont <= q) fa�a

      escreva("Informa o", cont, "� valor: ")
      leia(valor)

      soma <- soma + valor
      cont <- cont + 1

   fimenquanto

   escreval("-------------------------")
   escreval("A soma foi de de:", soma)

fimalgoritmo