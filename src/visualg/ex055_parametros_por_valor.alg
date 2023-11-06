algoritmo "Parâmetros Por Valor"
var
   x, y : real
   
procedimento soma(a, b : real)
inicio
   escreval(" A soma de", a, " e", b, " é igual a", a+b)
fimprocedimento

procedimento PARouIMPAR (num : inteiro)
inicio
   se (num%2 = 0) então
      escreval(num, " é PAR")
   senão
      escreval(num, " é IMPAR")
   fimse
fimprocedimento

inicio
   escreva(" 1º valor: ")
   leia(x)
   escreva(" 2º valor: ")
   leia(y)
   soma(x,y)
   PARouIMPAR(x)
   PARouIMPAR(y)
fimalgoritmo