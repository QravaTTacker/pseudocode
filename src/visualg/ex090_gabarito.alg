algoritmo "Gabarito"
var
   gab : vetor[1..5] de caractere
   resp : vetor[1..5] de caractere
   aluno : vetor[1..3] de caractere
   pontos : vetor[1..3] de inteiro
   i, j : inteiro
   media : real
inicio
   media <- 0
   escreval("============================")
   escreval("          GABARITO          ")
   escreval("============================")
   para i <- 1 até 5 faça
      escreva(i, "ª questão: ")
      leia(gab[i])
   fimpara
   limpatela
   escreval("============================")
   escreval("      REGISTRO DE NOTA      ")
   escreval("============================")
   para i <- 1 até 3 faça
      escreva(i, "º Aluno: ")
      leia(aluno[i])
      pontos[i]  <- 0
      escreval("-----------------")
      para j <- 1 até 5 faça
         escreva(j, "ª questão: ")
         leia(resp[j])
         se (resp[j] = gab[j]) então
            pontos[i] <- pontos[i] + 2
         fimse
      fimpara
      media <- media + pontos[i]
      escreval("-------------------")
   fimpara
   limpatela
   escreval("======================")
   escreval(" Aluno":16, "Nota")
   escreval("======================")
   para i <- 1 até 3 faça
      escreval(" ", aluno[i]:16, pontos[i])
   fimpara
   escreval("----------------------")
   escreval(" Média da turma: ", (media/3):4:2)
   escreval("======================")
fimalgoritmo