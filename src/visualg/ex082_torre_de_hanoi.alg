algoritmo "Torre de Hanoi"
var
   discos : inteiro

procedimento torre(d : inteiro; a, b, c : caractere)
inicio
   se (d = 1) ent�o
      escreval(" Mover disco", d, " de ", a, " para ", b)
   sen�o
      torre(d-1, a, c, b)
      escreval(" Mover disco", d, " de ", a, " para ", b)
      torre(d-1, c, b, a)
   fimse
fimprocedimento

inicio
   escreva(" Quantidade de discos: ")
   leia(discos)
   escreval
   se (discos <= 0) ent�o
      escreval(" Valor inv�lido")
   sen�o
      se (discos <= 10) entao
         torre(discos, "A", "B", "C")
         escreval
      fimse
      escreval(" Movimentos:", exp(2,discos)-1)
   fimse
fimalgoritmo