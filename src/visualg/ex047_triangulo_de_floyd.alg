algoritmo "Tri�ngulo De Floyd"
var
   i, j, n: inteiro
inicio

   escreva("Informe o n�mero de linhas: ")
   leia(n)
   escreval
   para i <- 1 at� n fa�a
      para j <- 1 at� i fa�a
         se((j = i)ou(i = n)ou(j = 1))ent�o
            escreva(" 1 ")
         sen�o
            escreva("   ")
         fimse
      fimpara
      escreval
   fimpara

   //i � o n�mero de linhas
   //j � o n�mero de colunas

fimalgoritmo