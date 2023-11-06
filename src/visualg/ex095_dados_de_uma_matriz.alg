algoritmo "Dados de Uma Matriz"
var
   M : vetor[1..4, 1..4] de inteiro
   i, j, somaP, somaS, proL2, maiorC3 : inteiro
inicio
   para i de 1 ate 4 faca
      para j de 1 ate 4 faca
         M[i,j] <- randi(10)
      fimpara
   fimpara
   para i de 1 ate 4 faca
      para j de 1 ate 4 faca
         escreva(" ", M[i,j])
      fimpara
      escreval
   fimpara

   somaP <- 0
   somaS <- 0
   proL2 <- 1
   para i de 1 ate 4 faca
      para j de 1 ate 4 faca
         se (j = i) entao
            somaP <- somaP + M[i,j]
         senao
            se (i + j = 5) então
               somaS <- somaS + M[i,j]
            fimse
         fimse
         se (i = 2) então
            proL2 <- proL2 * M[i,j]
         fimse
      fimpara
   fimpara

   para i <- 1 até 4 faça
      se ((M[i,3] > maiorC3) ou (i = 1)) então
         maiorC3 <- M[i,3]
      fimse
   fimpara
   
   escreval
   escreval(" Soma diagonal principa:", somaP)
   escreval(" Soma diagonal secundária:", somaS)
   escreval(" Produto da 2ª linha:", proL2)
   escreval(" Maior da 3ª coluna:", maiorC3)
fimalgoritmo