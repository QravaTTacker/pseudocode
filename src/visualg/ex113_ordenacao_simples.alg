algoritmo "Ordenação Simples I"
var
   valores : vetor[1..5] de inteiro
   i, j, copy : inteiro
inicio
   para i de 1 até 5 faça
      valores[i] := randi(10)
      escreva(valores[i])
   fimpara

   para i de 1 até 4 faça
      para j de 1 até 4 faça
         se (valores[j] > valores[j+1]) então
            copy := valores[j]
            valores[j] := valores[j+1]
            valores[j+1] := copy
         fimse
      fimpara
   fimpara

   escreval()
   para i de 1 até 5 faça
      escreva(valores[i])
   fimpara
   escreval()
fimalgoritmo