algoritmo "Tri�ngulo Invertido"
var
   i, j, n, x: inteiro
inicio

   x := 0
   escreva("Valor: ")
   leia(n)
   escreval
   para i := 1 at� n fa�a
      para j := 1 at� i fa�a
         escreva(" # ")
      fimpara
      escreval
   fimpara

   escreval

   x := 0
   escreva("Valor: ")
   leia(n)
   escreval
   para i := 1 at� n fa�a
      para j := i at� n fa�a
         escreva(" # ")
      fimpara
      escreval
   fimpara

   // j come�a com o valor de i e vai at� n
   // j = 1 --> 1, 2, 3, 4, 5, 6 --> 6 repeti��es
   // j = 2 --> 2, 3, 4, 5, 6 --> 5 repeti��es
   // j = 3 --> 3, 4, 5, 6 --> 4 repeti��es

   escreval

   x := 0
   escreva("Valor: ")
   leia(n)
   escreval
   para i := 1 at� n fa�a
      para j := 1 at� n fa�a
         se(j>=i)ent�o
            escreva(" # ")
         sen�o
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
   para i := 1 at� n fa�a
      para j := i at� (n-1) fa�a
         escreva("   ")
      fimpara
      para j := 1 at� i fa�a
         escreva(" # ")
      fimpara
      escreval
   fimpara

fimalgoritmo