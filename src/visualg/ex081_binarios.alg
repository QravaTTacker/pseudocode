algoritmo "Bin�rios"
var
   num, C, i : inteiro
   
procedimento binario(n : inteiro)
inicio
   se ((n = 0) ou (n = 1)) ent�o
      escreva(" ", n)
   sen�o
      binario(n/2)
      escreva(" ", n%2)
   fimse
fimprocedimento

inicio
   escreva(" Digite um n�mero: ")
   leia(num)
   escreval
   binario(num)
   escreval
   escreval
   para i := 0 at� num fa�a
   se (num = 0) ent�o
      escreva(" ", num)
   sen�o
      escreva(" ", num%2)
      num <- int(num/2)
      se (num = 0) ent�o
         interrompa
      fimse
   fimse
   fimpara
   escreval
   escreval
   escreval(" Valor invertido para o comando PARA...")
   //Criar um vetor para armazenar os valores
   escreval
fimalgoritmo