algoritmo "Ordena��o Simples I"
var
   valores : vetor[1..5] de inteiro
   i, j, copy : inteiro
inicio
   para i de 1 at� 5 fa�a
      valores[i] := randi(10)
      escreva(valores[i])
   fimpara

   para i de 1 at� 4 fa�a
      para j de 1 at� 4 fa�a
         se (valores[j] > valores[j+1]) ent�o
            copy := valores[j]
            valores[j] := valores[j+1]
            valores[j+1] := copy
         fimse
      fimpara
   fimpara

   escreval()
   para i de 1 at� 5 fa�a
      escreva(valores[i])
   fimpara
   escreval()
fimalgoritmo