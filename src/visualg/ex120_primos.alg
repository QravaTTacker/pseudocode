algoritmo "Primos"
var
   i, space, totPrimo : inteiro
   mudar, copy : logico

funcao validarEntrada() : inteiro
var
   num : inteiro
inicio
   repita
      escreva(" Número limite: ")
      leia(num)
      limpatela
      se (num < 1) entao
         escreval(" Valor deve ser maior que 0, você digitou", num:0, "!")
      fimse
   ate (num > 0)
   escreval(" São primos de 1 ao", num:0, ":")
   retorne num
fimfuncao

funcao sair() : logico
var
   resp : caractere
inicio
   escreval(" Para? [sim/não]")
   escreva(" >>> ")
   leia(resp)
   resp <- minusc(resp)
   limpatela
   se (resp = "s") ou (resp = "si") ou (resp = "sim") entao
      retorne Verdadeiro
   senao
      retorne Falso
   fimse
fimfuncao

procedimento primos(valor : inteiro)
var
   j : inteiro
   divi, aux: logico
inicio
   divi <- Verdadeiro
   para j de 2 ate valor-1 faca
      se (valor % j = 0) entao
         divi <- Falso
         interrompa
      fimse
   fimpara
   se (divi) entao
      totPrimo <- totPrimo + 1
      escreva(totPrimo:0, " ")
      se ((space+1) % 30 = 0) entao
         aux <- mudar
         mudar <- copy
         copy <- aux
         space <- 0
      fimse
      space <- space + 1
      se (mudar) entao
         para j de 1 ate 30-space faca
            escreva("-")
         fimpara
         escreval("> ":30-space, valor)
      senao
         para j de 1 ate space faca
            escreva("-")
         fimpara
         escreval("> ":space, valor)
      fimse
   fimse
fimprocedimento

inicio

   repita
      totPrimo <- 0
      mudar <- Falso
      copy <- Verdadeiro
      space <- 0
      para i de 1 ate validarEntrada() faca
         primos(i)
      fimpara
   ate(sair())

fimalgoritmo
