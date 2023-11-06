algoritmo "Binários"
var
   num, C, i : inteiro
   
procedimento binario(n : inteiro)
inicio
   se ((n = 0) ou (n = 1)) então
      escreva(" ", n)
   senão
      binario(n/2)
      escreva(" ", n%2)
   fimse
fimprocedimento

inicio
   escreva(" Digite um número: ")
   leia(num)
   escreval
   binario(num)
   escreval
   escreval
   para i := 0 até num faça
   se (num = 0) então
      escreva(" ", num)
   senão
      escreva(" ", num%2)
      num <- int(num/2)
      se (num = 0) então
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