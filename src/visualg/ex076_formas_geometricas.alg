algoritmo "Formas Geométricas"
var
   i, j, n, x, y, w : inteiro
inicio
   escreva(" Número de linhas: ")
   leia(n)
   x <- 1
   y <- n-1
   w <- 0
   escreval
   para i <- 1 até n faça
      para j <- 1 até y faça
         escreva("   ")
      fimpara
      y <- y - 1
      para j <- 1 até x faça
         se((j = 1) ou (j = x) ou (i = n) ou (j = x - w) ou (i = int(n/2)))então
            escreva(" # ")
         senão
            escreva("   ")
         fimse
      fimpara
      w <- w + 1
      x <- x + 2
      escreval
   fimpara

   escreval
   escreval
   para i <- 1 até n faça
      para j <- 1 até i-1 faça
         escreva("   ")
      fimpara
      para j <- 1 até n faça
         se ((i = 1) ou (i = n)) então
            escreva(" # ")
         senão
            se ((j = 1) ou (j = n))então
               escreva(" # ")
            senão
               escreva("   ")
            fimse
         fimse
      fimpara
      escreval
   fimpara

   escreval
   escreval
   para i <- 1 até n faça
      para j <- i até n-1 faça
         escreva("   ")
      fimpara
      para j <- 1 até n faça
         se ((i = 1) ou (i = n)) então
            escreva(" # ")
         senão
            se ((j = 1) ou (j = n))então
               escreva(" # ")
            senão
               escreva("   ")
            fimse
         fimse
      fimpara
      escreval
   fimpara

   escreval
   escreval
   para i <- 1 até n faça
      para j <- 1 até i faça
         escreva(" # ")
      fimpara
      escreval
   fimpara

   escreval
   escreval
   para i <- 1 até n faça
      para j <- i até n-1 faça
         escreva("   ")
      fimpara
      para j <- 1 até i faça
         escreva(" # ")
      fimpara
      escreval
   fimpara

   escreval
   escreval
   para i <- 1 até n faça
      para j <- i até n faça
         escreva(" # ")
      fimpara
      escreval
   fimpara

   escreval
   escreval
   para i <- 1 até n faça
      para j <- 1 até i-1 faça
         escreva("   ")
      fimpara
      para j <- i até n faça
         escreva(" # ")
      fimpara
      escreval
   fimpara
fimalgoritmo
