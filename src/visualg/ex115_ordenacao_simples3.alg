algoritmo "Orden��o Simples III"
var
   valor : vetor[1..5] de real
   i, j : inteiro
   copy : real

procedimento random()
inicio
   para i de 1 at� 5 fa�a
      valor[i] := randi(9) + rand()
      escreval(valor[i]:5:2)
   fimpara
fimprocedimento

inicio

   random()
   
   para i de 1 at� 4 fa�a
      para j de i+1 at� 5 fa�a
         se (valor[i] > valor[j]) ent�o
            copy := valor[i]
            valor[i] := valor[j]
            valor[j] := copy
         fimse
      fimpara
   fimpara
   
   escreval()
   para i de 1 at� 5 fa�a
      escreval(valor[i]:5:2)
   fimpara

   para i de 1 at� 4 fa�a
      para j de 1 at� 4 fa�a
         se (valor[j] < valor[j+1]) ent�o
            copy := valor[j]
            valor[j] := valor[j+1]
            valor[j+1] := copy
         fimse
      fimpara
   fimpara
   
   escreval()
   para i de 1 at� 5 fa�a
      escreval(valor[i]:5:2)
   fimpara

fimalgoritmo