algoritmo "Ordenção Simples III"
var
   valor : vetor[1..5] de real
   i, j : inteiro
   copy : real

procedimento random()
inicio
   para i de 1 até 5 faça
      valor[i] := randi(9) + rand()
      escreval(valor[i]:5:2)
   fimpara
fimprocedimento

inicio

   random()
   
   para i de 1 até 4 faça
      para j de i+1 até 5 faça
         se (valor[i] > valor[j]) então
            copy := valor[i]
            valor[i] := valor[j]
            valor[j] := copy
         fimse
      fimpara
   fimpara
   
   escreval()
   para i de 1 até 5 faça
      escreval(valor[i]:5:2)
   fimpara

   para i de 1 até 4 faça
      para j de 1 até 4 faça
         se (valor[j] < valor[j+1]) então
            copy := valor[j]
            valor[j] := valor[j+1]
            valor[j+1] := copy
         fimse
      fimpara
   fimpara
   
   escreval()
   para i de 1 até 5 faça
      escreval(valor[i]:5:2)
   fimpara

fimalgoritmo