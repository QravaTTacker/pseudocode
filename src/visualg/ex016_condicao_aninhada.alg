algoritmo "Condi��o aninhada"
var
   n1, n2, m : real
inicio

   escreva("Primeira nota: ")
   leia(n1)
   escreva("Segunda nota: ")
   leia(n2)

   m <- (n1 + n2)/2
   escreval("M�DIA DO ALUNO: ", m)

   se (m >= 7) ent�o
      escreva("APROVADO")
   sen�o
      se (m >= 5) e (m < 7) ent�o
         escreva("EM RECUPERA��O")
      sen�o
         escreva("REPROVADO")
      fimse
   fimse

fimalgoritmo

