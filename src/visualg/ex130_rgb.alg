algoritmo "bem-vindo"
var
   nome : caractere

procedimento bem_vindo(n : caractere)
var
   cores : vetor[0..5] de caractere
   frase : caractere
   i, j: inteiro
inicio
   cores[0] <- "vermelho"
   cores[1] <- "amarelo"
   cores[2] <- "verde"
   cores[3] <- "azul"
   cores[4] <- "branco"
   cores[5] <- "preto"
   frase <- "BEM VINDO " + maiusc(n) + " SEU ARROMBADO DA POHA KSKSKS"
   enquanto verdadeiro faca
      para i de 0 ate 5 faca
         limpatela
         timer 1
         para j de 1 ate 5 faca
            escreval(frase)
         fimpara
         mudacor(cores[i], "fundos")
      mudacor(cores[5-i], "frente")
      timer 50
   fimpara
   timer 0
   fimenquanto
fimprocedimento

inicio
   escreva("Qual é o seu nome? ")
   leia(nome)
   bem_vindo(nome)
fimalgoritmo