algoritmo "Condição aninhada"
var
   n1, n2, m : real
inicio

   escreva("Primeira nota: ")
   leia(n1)
   escreva("Segunda nota: ")
   leia(n2)

   m <- (n1 + n2)/2
   escreval("MÉDIA DO ALUNO: ", m)

   se (m >= 7) então
      escreva("APROVADO")
   senão
      se (m >= 5) e (m < 7) então
         escreva("EM RECUPERAÇÃO")
      senão
         escreva("REPROVADO")
      fimse
   fimse

fimalgoritmo

