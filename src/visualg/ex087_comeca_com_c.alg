algoritmo "Come�a Com C"
var
   nome : caractere
   nomeC : vetor[1..10] de caractere
   posi : vetor[1..10] de inteiro
   i, total_c: inteiro
inicio
   total_c <- 0
   para i <- 1 at� 10 fa�a
      escreva(i, "� nome: ")
      leia(nome)
      se (copia(maiusc(nome), 1, 1) = "C") ent�o
         total_c <- total_c + 1
         nomec[total_c] <- nome
         posi[total_c] <- i
      fimse
   fimpara
   escreval("===================================")
   escreval(maiusc(" Nomes que come�am com 'C':"))
   escreval("---------------------------")
   para i <- 1 ate total_c fa�a
      escreval(" ", nomec[i], " na posi��o", posi[i], " da lista")
   fimpara
   escreval("===================================")
fimalgoritmo