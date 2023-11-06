algoritmo "Triângulo De Floyd"
var
   i, j, n: inteiro
inicio

   escreva("Informe o número de linhas: ")
   leia(n)
   escreval
   para i <- 1 até n faça
      para j <- 1 até i faça
         se((j = i)ou(i = n)ou(j = 1))então
            escreva(" 1 ")
         senão
            escreva("   ")
         fimse
      fimpara
      escreval
   fimpara

   //i é o número de linhas
   //j é o número de colunas

fimalgoritmo