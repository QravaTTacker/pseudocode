algoritmo "Contagem Simples"
var
   i : inteiro

procedimento pular(j : inteiro)
inicio
   se (j) % 10 = 0 ent�o
      escreval()
   fimse
fimprocedimento

procedimento de_0a50()
inicio
   para i de 0 at� 50 fa�a
      escreva(i:4)
      pular(i+1)
   fimpara
fimprocedimento

procedimento de_100a1()
inicio
   para i de 100 at� 1 passo -1 fa�a
      escreva(i:4)
      pular(i-1)
   fimpara
fimprocedimento

inicio
   escreval("-----------------------------------------")
   de_0a50()
   escreval()
   escreval("-----------------------------------------")
   de_100a1()
   escreval("-----------------------------------------")
fimalgoritmo