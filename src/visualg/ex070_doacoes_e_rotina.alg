algoritmo "Doações e Rotina"
var
   op : inteiro
   valor : real

procedimento msg(op : inteiro)
var
   valor : real
inicio
   escolha(op)
   caso 1
      escreval(" Obrigado pela doação de R$ 100.00!")
   caso 2
      escreval(" Obrigado pela doação de R$ 50.00!")
   caso 3
      escreval(" Obrigado pela doação de R$ 20.00!")
   caso 4
      escreval(" Obrigado pela doação de R$ 10.00!")
   caso 5
      escreva(" Informe o valor: ")
      leia(valor)
      escreval
      escreval(" Obrigado pela doação de R$ ", valor:1:2, "!")
   fimescolha
fimprocedimento

inicio
   escreval("==$===============$===============$==")
   escreval("||       OPÇÕES PARA DOAÇÕES       ||")
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
   escreva(" >> Qual opção deseja? ")
   leia(op)
   escreval
   escreval("==$===============$===============$==")
   escreval
   se ((op >= 1) e (op <= 5)) entao
      msg(op)
      escreval
      escreval("--------------------------------------")
   senão
      escreval("            Opção Inválida            ")
      escreval
      escreval("--------------------------------------")
   fimse
fimalgoritmo