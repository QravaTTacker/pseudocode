algoritmo "Doa��es e Rotina"
var
   op : inteiro
   valor : real

procedimento msg(op : inteiro)
var
   valor : real
inicio
   escolha(op)
   caso 1
      escreval(" Obrigado pela doa��o de R$ 100.00!")
   caso 2
      escreval(" Obrigado pela doa��o de R$ 50.00!")
   caso 3
      escreval(" Obrigado pela doa��o de R$ 20.00!")
   caso 4
      escreval(" Obrigado pela doa��o de R$ 10.00!")
   caso 5
      escreva(" Informe o valor: ")
      leia(valor)
      escreval
      escreval(" Obrigado pela doa��o de R$ ", valor:1:2, "!")
   fimescolha
fimprocedimento

inicio
   escreval("==$===============$===============$==")
   escreval("||       OP��ES PARA DOA��ES       ||")
   escreval("==$===============$===============$==")
   escreval
   escreval(" ----------------------------------")
   escreval("   |    R$ 100.00 -----> [1]    |")
   escreval("   |    R$ 50.00  -----> [2]    |")
   escreval("   |    R$ 20.00  -----> [3]    |")
   escreval("   |    R$ 10.00  -----> [4]    |")
   escreval("   |   Outro valor ----> [5]    |")
   escreval(" ----------------------------------")
   escreval
   escreva(" >> Qual op��o deseja? ")
   leia(op)
   escreval
   escreval("==$===============$===============$==")
   escreval
   se ((op >= 1) e (op <= 5)) entao
      msg(op)
      escreval
      escreval("--------------------------------------")
   sen�o
      escreval("            Op��o Inv�lida            ")
      escreval
      escreval("--------------------------------------")
   fimse
fimalgoritmo