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
   para i <- 1 at� 5 fa�a
      escreva(i, "� quest�o: ")
      leia(gab[i])
   fimpara
   limpatela
   escreval("============================")
   escreval("      REGISTRO DE NOTA      ")
   escreval("============================")
   para i <- 1 at� 3 fa�a
      escreva(i, "� Aluno: ")
      leia(aluno[i])
      pontos[i]  <- 0
      escreval("-----------------")
      para j <- 1 at� 5 fa�a
         escreva(j, "� quest�o: ")
         leia(resp[j])
         se (resp[j] = gab[j]) ent�o
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
   para i <- 1 at� 3 fa�a
      escreval(" ", aluno[i]:16, pontos[i])
   fimpara
   escreval("----------------------")
   escreval(" M�dia da turma: ", (media/3):4:2)
   escreval("======================")
fimalgoritmo