algoritmo "Soma Com Função"
var
   resp : caractere


função contaSOMA(P, C : inteiro) : inteiro
var
   soma, i: inteiro
inicio
   soma <- 0
   se (P < C) então
      para i <- P até C passo 1 faça
         soma <- soma + i
      fimpara
      retorne soma
   senão
      se (P > C) então
         para i <- P até C passo -1 faça
            soma <- soma + i
         fimpara
         retorne soma
      senão
         retorne P
      fimse
   fimse
fimfunção



procedimento info()
var
   valorP, valorC: inteiro
inicio
   escreva(" Informe o valor de partida: ")
   leia(valorP)
   escreva(" Informe o valor de chegada: ")
   leia(valorC)
   escreval
   escreva(" A soma dos números foi de", contaSOMA(valorP, valorC))
   se(valorP = valorC) então
      escreval(" pois o ")
      escreval(" intervalo entre os valores é o mesmo...")
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
   até((resp = "s") ou (resp = "S") ou (resp = "sim") ou (resp = "SIM"))
fimalgoritmo