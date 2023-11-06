algoritmo "Rotina de Operações"
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
   se ((valor1 <> 0) e (valor2 <> 0)) então
      contas(valor1, valor2)
      escreval(valor1, " /", valor2, " =", valor1/valor2:5:2)
   senão
      se ((valor1 = 0) e (valor2 <> 0)) então
         contas(valor1, valor2)
         escreval(valor1, " /", valor2, " = 0")
      senão
         se (((valor1 = 0)ou(valor1 <> 0)) e (valor2 = 0)) então
            contas(valor1, valor2)
            escreval(valor1, " /", valor2, " = impossível")
         fimse
      fimse
   fimse
fimalgoritmo