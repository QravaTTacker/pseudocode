algoritmo "Par�metros Por Valor"
var
   x, y : real
   
procedimento soma(a, b : real)
inicio
   escreval(" A soma de", a, " e", b, " � igual a", a+b)
fimprocedimento

procedimento PARouIMPAR (num : inteiro)
inicio
   se (num%2 = 0) ent�o
      escreval(num, " � PAR")
   sen�o
      escreval(num, " � IMPAR")
   fimse
fimprocedimento

inicio
   escreva(" 1� valor: ")
   leia(x)
   escreva(" 2� valor: ")
   leia(y)
   soma(x,y)
   PARouIMPAR(x)
   PARouIMPAR(y)
fimalgoritmo