algoritmo "Começa Com C"
var
   nome : caractere
   nomeC : vetor[1..10] de caractere
   posi : vetor[1..10] de inteiro
   i, total_c: inteiro
inicio
   total_c <- 0
   para i <- 1 até 10 faça
      escreva(i, "º nome: ")
      leia(nome)
      se (copia(maiusc(nome), 1, 1) = "C") então
         total_c <- total_c + 1
         nomec[total_c] <- nome
         posi[total_c] <- i
      fimse
   fimpara
   escreval("===================================")
   escreval(maiusc(" Nomes que começam com 'C':"))
   escreval("---------------------------")
   para i <- 1 ate total_c faça
      escreval(" ", nomec[i], " na posição", posi[i], " da lista")
   fimpara
   escreval("===================================")
fimalgoritmo