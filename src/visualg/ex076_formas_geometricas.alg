algoritmo "Formas Geom�tricas"
var
   i, j, n, x, y, w : inteiro
inicio
   escreva(" N�mero de linhas: ")
   leia(n)
   x <- 1
   y <- n-1
   w <- 0
   escreval
   para i <- 1 at� n fa�a
      para j <- 1 at� y fa�a
         escreva("   ")
      fimpara
      y <- y - 1
      para j <- 1 at� x fa�a
         se((j = 1) ou (j = x) ou (i = n) ou (j = x - w) ou (i = int(n/2)))ent�o
            escreva(" # ")
         sen�o
            escreva("   ")
         fimse
      fimpara
      w <- w + 1
      x <- x + 2
      escreval
   fimpara

   escreval
   escreval
   para i <- 1 at� n fa�a
      para j <- 1 at� i-1 fa�a
         escreva("   ")
      fimpara
      para j <- 1 at� n fa�a
         se ((i = 1) ou (i = n)) ent�o
            escreva(" # ")
         sen�o
            se ((j = 1) ou (j = n))ent�o
               escreva(" # ")
            sen�o
               escreva("   ")
            fimse
         fimse
      fimpara
      escreval
   fimpara

   escreval
   escreval
   para i <- 1 at� n fa�a
      para j <- i at� n-1 fa�a
         escreva("   ")
      fimpara
      para j <- 1 at� n fa�a
         se ((i = 1) ou (i = n)) ent�o
            escreva(" # ")
         sen�o
            se ((j = 1) ou (j = n))ent�o
               escreva(" # ")
            sen�o
               escreva("   ")
            fimse
         fimse
      fimpara
      escreval
   fimpara

   escreval
   escreval
   para i <- 1 at� n fa�a
      para j <- 1 at� i fa�a
         escreva(" # ")
      fimpara
      escreval
   fimpara

   escreval
   escreval
   para i <- 1 at� n fa�a
      para j <- i at� n-1 fa�a
         escreva("   ")
      fimpara
      para j <- 1 at� i fa�a
         escreva(" # ")
      fimpara
      escreval
   fimpara

   escreval
   escreval
   para i <- 1 at� n fa�a
      para j <- i at� n fa�a
         escreva(" # ")
      fimpara
      escreval
   fimpara

   escreval
   escreval
   para i <- 1 at� n fa�a
      para j <- 1 at� i-1 fa�a
         escreva("   ")
      fimpara
      para j <- i at� n fa�a
         escreva(" # ")
      fimpara
      escreval
   fimpara
fimalgoritmo
