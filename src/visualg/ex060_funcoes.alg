algoritmo "Fun��es"
var
   x : inteiro
   c : caracter



fun��o quadr(x : inteiro) : inteiro //Fun��o o resultado
inicio
   retorne (x*x)
fimfun��o



procedimento cubo(x : inteiro) //Prcedimento: Mostra uma msg com o resultado
inicio
   escreval("O Cubo de", x, " �", x*x*x)
fimprocedimento



inicio //programa principal
   c <- "n"
   repita
      escreva("Entre com um valor inteiro: ")
      leia(x)
      escreval
      escreval("O Quadrado de", x, " �", quadr(x))
      cubo(x)
      escreval
      escreva("Para? [s/n] ")
      leia(c)
      limpatela
      enquanto ((c <> "s") e (c <> "n")) fa�a
         escreval(c, " � inv�lido :/")
         escreval
         escreva("Para? [s/n] ")
         leia(c)
         limpatela
      fimenquanto
   at� ((c <> "n") e (c = "s"))
fimalgoritmo