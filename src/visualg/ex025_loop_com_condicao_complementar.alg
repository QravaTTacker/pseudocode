algoritmo "Laço com condição complementar"
var
   c : inteiro
   tx : caractere
inicio

   tx <- "não"
   c <- 0
   
   escreval("----------------")

   enquanto ((tx <> "sim") e (tx <> "s") e (tx <> "SIM")) faça

      escreval("Valor:", c)
      escreva("Parar? ")
      leia(tx)
      escreval
      c <- c + 1

   fimenquanto
   
   escreval("----------------")
   
   //O programa só executa o laço de repetição se a condição for verdadeira!
   //Se a condição total for falsa, o laço de repetição para.

fimalgoritmo