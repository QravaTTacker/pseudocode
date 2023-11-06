algoritmo "Elementos Alternados"
var
   v, v2 : vetor[0..4] de inteiro
   esquerda, direita, centro : inteiro
   i, length, valor : inteiro
inicio

   length <- 5
   centro <- length\2

   esquerda <- centro
   direita <- centro

   se (length % 2 = 0) então
      esquerda <- esquerda - 1
   senão
      direita <- direita + 1
   fimse

   para i de 0 ate length-1 faca
      escreva(i+1, "º valor: ")
      leia(valor)
      se (i % 2 = 0) então
         v[esquerda] <- valor
         esquerda <- esquerda - 1
      senão
         v[direita] <- valor
         direita <- direita + 1
      fimse
      v2[i] <- valor
   fimpara

   para i de 0 ate length-1 faca
      escreva(v[i], " ")
   fimpara
   escreval()
   para i de 0 ate length-1 faca
      escreva(v2[i], " ")
   fimpara

fimalgoritmo