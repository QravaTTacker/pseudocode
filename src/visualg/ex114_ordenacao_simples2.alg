algoritmo "Ordena��o Simples II"
var
   valores : vetor[1..5] de inteiro
   i, j, copy : inteiro
inicio
   para i de 1 ate 5 faca
      valores[i] := randi(10)
      escreva(valores[i])
   fimpara

   para i de 1 at� 4 fa�a
      para j de i+1 at� 5 fa�a
         se (valores[i] > valores[j]) ent�o
            copy := valores[i]
            valores[i] := valores[j]
            valores[j] := copy
         fimse
      fimpara
   fimpara

   escreval()
   para i de 1 ate 5 faca
      escreva(valores[i])
   fimpara
fimalgoritmo