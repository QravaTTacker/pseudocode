algoritmo "Quadrado"
var
   i, j, n : inteiro
inicio

   escreva("Valor de n: ")
   leia(n)
   escreval
   para i := 1 até n faça
      para j:= 1 até n faca
         se((j = 1)ou(i = 1)ou(j = n)ou(i = n)ou(j = i)ou(i+j = (n+1)))então
            escreva(" # ")
         senão
            escreva("   ")
         fimse
      fimpara
      escreval
   fimpara

fimalgoritmo