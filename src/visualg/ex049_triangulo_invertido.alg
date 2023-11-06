algoritmo "Triângulo Invertido"
var
   i, j, n, x: inteiro
inicio

   x := 0
   escreva("Valor: ")
   leia(n)
   escreval
   para i := 1 até n faça
      para j := 1 até i faça
         escreva(" # ")
      fimpara
      escreval
   fimpara

   escreval

   x := 0
   escreva("Valor: ")
   leia(n)
   escreval
   para i := 1 até n faça
      para j := i até n faça
         escreva(" # ")
      fimpara
      escreval
   fimpara

   // j começa com o valor de i e vai até n
   // j = 1 --> 1, 2, 3, 4, 5, 6 --> 6 repetições
   // j = 2 --> 2, 3, 4, 5, 6 --> 5 repetições
   // j = 3 --> 3, 4, 5, 6 --> 4 repetições

   escreval

   x := 0
   escreva("Valor: ")
   leia(n)
   escreval
   para i := 1 até n faça
      para j := 1 até n faça
         se(j>=i)então
            escreva(" # ")
         senão
            escreva("   ")
         fimse
      fimpara
      escreval
   fimpara
   
   escreval

   x := 0
   escreva("Valor: ")
   leia(n)
   escreval
   para i := 1 até n faça
      para j := i até (n-1) faça
         escreva("   ")
      fimpara
      para j := 1 até i faça
         escreva(" # ")
      fimpara
      escreval
   fimpara

fimalgoritmo