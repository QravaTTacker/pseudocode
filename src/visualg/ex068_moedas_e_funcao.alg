algoritmo "Moedas e Fun��o"
var
   resp : caractere
   op : inteiro
   reais, resul : real

procedimento msg(op : inteiro; reais, resul: real)
inicio
   escolha (op)
   caso 1
      escreval(" BRL ", reais:1:2, " -> USD ", resul:1:2)
   caso 2
      escreval(" BRL ", reais:1:2, " -> JPY ", resul:1:2)
   caso 3
      escreval(" BRL ", reais:1:2, " -> MXN ", resul:1:2)
   caso 4
      escreval(" BRL ", reais:1:2, " -> EUR ", resul:1:2)
   fimescolha
fimprocedimento

fun��o conver(op : inteiro; reais : real) : real
inicio
   escolha (op)
   caso 1
      retorne reais/5.41
   caso 2
      retorne reais/0.04
   caso 3
      retorne reais/0.26
   caso 4
      retorne reais/5.46
   fimescolha
fimfun��o

inicio
   //(1) USD 1.00 = R$ 5.41
   //(2) JPY 1.00 = R$ 0.04
   //(3) MXN 1.00 = BRL 0.26
   //(4) EUR 1.00 = EUR 5.46
   repita
      escreval("==============================")
      escreval("  (Real -> D�lar)........[1]")
      escreval("  (Real -> Iene).........[2]")
      escreval("  (Real -> Peso).........[3]")
      escreval("  (Real -> Euro).........[4]")
      escreval("==============================")
      escreval
      escreval("------------------------------")
      escreva("  Op��o    >>> ")
      leia(op)
      escreval("------------------------------")
      escreval
      se ((op >= 1) e (op <= 4)) ent�o
         escreva(" Informe o valor em reais: ")
         leia(reais)
         escreval
         resul <- conver(op, reais)
         msg(op, reais, resul)
      sen�o
         escreval("      Op��o inv�lida :/ ")
      fimse
      escreval
      escreval("==============================")
      escreva(" Para? [sim/n�o] ")
      leia(resp)
      limpatela
   at� ((resp = "sim") ou (resp = "SIM") ou (resp = "S") ou (resp = "s"))  // V
fimalgoritmo