algoritmo "Ordenação Simples"
var
A : vetor[0..99] de inteiro
i, j, aux, cont: inteiro
inicio
para i de 0 ate 99 faca
   A[i] := randi(99) + 1
   escreva(A[i]:3)
   se ((i+1) mod 10 = 0) entao
      escreval()
   fimse
fimpara
cont <- 0
para j de 0 ate 98 faca
   para i de 0 ate 98 faca
      se (A[i] > A[i+1]) entao
         aux := A[i+1]
         A[i+1] := A[i]
         A[i] := aux
      fimse
      cont <- cont + 1
   fimpara
fimpara
escreval()
para i de 0 ate 99 faca
   escreva(A[i]:3)
   se ((i+1) mod 10 = 0) entao
      escreval()
   fimse
fimpara
escreval()
escreval(" Comparações:", cont)
fimalgoritmo
