algoritmo "Média de notas"
var
   n1, n2, m : real
inicio

      escreval("---------------------")
      escreval("  Escola Vaca Goiaba")
      escreval("---------------------")
      
      escreva("Primeira nota: ")
      leia(n1)
      escreva("Segunda nota: ")
      leia(n2)
      escreval
      escreval("----- AVALIAÇÃO -----")
      m <- (n1 + n2)/2
      se (m >= 7) então
         escreval("MÉDIA: ", m:5:2)
         escreval("STATUS: APROVADO")
      senão
           escreval("MÉDIA: ", M:5:2)
           escreval("STATUS: REPROVADO")
      fimse
      escreval("---------------------")


fimalgoritmo