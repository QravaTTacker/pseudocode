algoritmo "Valor maior e menor com while"
var
   i, q, n, soma, maior, menor: inteiro
inicio

   i <- 1
   q <- 0
   n <- 0
   soma <- 0
   maior <- 0
   menor <- 0

   escreva("Quantas somas voc� deseja? ")
   leia(q)
   escreval

   enquanto (i <= q) fa�a

      escreva(i, "� valor: ")
      leia(n)

      se ((maior = 0) ou (n > maior)) ent�o
         maior <- n
      fimse

      se ((menor = 0) ou (n < menor)) ent�o
         menor <- n
      fimse

      soma <- soma + n
      i <- i + 1

   fimenquanto

   escreval
   escreval("O valor da soma foi de :", soma)
   escreval("O valor maior foi de :", maior)
   escreval("O valor menor foi de :", menor)

   //No caso do menor, tivemos que for�ar ele para atribuir o valor.
   //Para isso, usamos do operador "ou" e a condi��o de "menor = 0".

fimalgoritmo