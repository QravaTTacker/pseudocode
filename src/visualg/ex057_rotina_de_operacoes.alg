algoritmo "Rotina de Opera��es"
var
   valor1, valor2 : inteiro
procedimento contas(x, y : inteiro)
inicio
   escreval(x, " +", y, " =", x+y)
   escreval(x, " -", y, " =", x-y)
   escreval(x, " *", y, " =", x*y)
fimprocedimento
inicio
   escreva(" Informe um valor: ")
   leia(valor1)
   escreva(" Informe um segundo valor: ")
   leia(valor2)
   se ((valor1 <> 0) e (valor2 <> 0)) ent�o
      contas(valor1, valor2)
      escreval(valor1, " /", valor2, " =", valor1/valor2:5:2)
   sen�o
      se ((valor1 = 0) e (valor2 <> 0)) ent�o
         contas(valor1, valor2)
         escreval(valor1, " /", valor2, " = 0")
      sen�o
         se (((valor1 = 0)ou(valor1 <> 0)) e (valor2 = 0)) ent�o
            contas(valor1, valor2)
            escreval(valor1, " /", valor2, " = imposs�vel")
         fimse
      fimse
   fimse
fimalgoritmo