algoritmo "Soma Com Fun��o"
var
   resp : caractere


fun��o contaSOMA(P, C : inteiro) : inteiro
var
   soma, i: inteiro
inicio
   soma <- 0
   se (P < C) ent�o
      para i <- P at� C passo 1 fa�a
         soma <- soma + i
      fimpara
      retorne soma
   sen�o
      se (P > C) ent�o
         para i <- P at� C passo -1 fa�a
            soma <- soma + i
         fimpara
         retorne soma
      sen�o
         retorne P
      fimse
   fimse
fimfun��o



procedimento info()
var
   valorP, valorC: inteiro
inicio
   escreva(" Informe o valor de partida: ")
   leia(valorP)
   escreva(" Informe o valor de chegada: ")
   leia(valorC)
   escreval
   escreva(" A soma dos n�meros foi de", contaSOMA(valorP, valorC))
   se(valorP = valorC) ent�o
      escreval(" pois o ")
      escreval(" intervalo entre os valores � o mesmo...")
   fimse
   escreval
fimprocedimento



inicio
   repita
      escreval("-------------------------------------")
      info()
      escreval("-------------------------------------")
      escreva(" Para? [s/n] ")
      leia(resp)
      limpatela
   at�((resp = "s") ou (resp = "S") ou (resp = "sim") ou (resp = "SIM"))
fimalgoritmo