algoritmo "La�o com condi��o complementar"
var
   c : inteiro
   tx : caractere
inicio

   tx <- "n�o"
   c <- 0
   
   escreval("----------------")

   enquanto ((tx <> "sim") e (tx <> "s") e (tx <> "SIM")) fa�a

      escreval("Valor:", c)
      escreva("Parar? ")
      leia(tx)
      escreval
      c <- c + 1

   fimenquanto
   
   escreval("----------------")
   
   //O programa s� executa o la�o de repeti��o se a condi��o for verdadeira!
   //Se a condi��o total for falsa, o la�o de repeti��o para.

fimalgoritmo