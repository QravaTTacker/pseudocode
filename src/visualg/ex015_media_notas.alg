algoritmo "M�dia de notas"
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
      escreval("----- AVALIA��O -----")
      m <- (n1 + n2)/2
      se (m >= 7) ent�o
         escreval("M�DIA: ", m:5:2)
         escreval("STATUS: APROVADO")
      sen�o
           escreval("M�DIA: ", M:5:2)
           escreval("STATUS: REPROVADO")
      fimse
      escreval("---------------------")


fimalgoritmo