algoritmo "Times"
var
   times: vetor[1..3] de caractere
   i, j : inteiro
inicio
   escreval("==========================")
   escreval("    TABELA DE PARTIDAS    ")
   escreval("==========================")
   para i <- 1 ate 3 fa�a
      escreva(i, "� time: ")
      leia(times[i])
   fimpara
   escreval("---------------------")
   escreval("        JOGOS        ")
   escreval("---------------------")
   para i <- 1 at� 3 fa�a
      para j <- 1 ate 3 fa�a
         se (times[i] <> times[j]) ent�o
            escreval(" ", times[i], " [] x [] ", times[j])
         fimse
      fimpara
   fimpara
   escreval("==========================")
fimalgoritmo