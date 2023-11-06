algoritmo "Times"
var
   times: vetor[1..3] de caractere
   i, j : inteiro
inicio
   escreval("==========================")
   escreval("    TABELA DE PARTIDAS    ")
   escreval("==========================")
   para i <- 1 ate 3 faça
      escreva(i, "º time: ")
      leia(times[i])
   fimpara
   escreval("---------------------")
   escreval("        JOGOS        ")
   escreval("---------------------")
   para i <- 1 até 3 faça
      para j <- 1 ate 3 faça
         se (times[i] <> times[j]) então
            escreval(" ", times[i], " [] x [] ", times[j])
         fimse
      fimpara
   fimpara
   escreval("==========================")
fimalgoritmo