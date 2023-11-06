algoritmo "Funções"
var
   x : inteiro
   c : caracter



função quadr(x : inteiro) : inteiro //Função o resultado
inicio
   retorne (x*x)
fimfunção



procedimento cubo(x : inteiro) //Prcedimento: Mostra uma msg com o resultado
inicio
   escreval("O Cubo de", x, " é", x*x*x)
fimprocedimento



inicio //programa principal
   c <- "n"
   repita
      escreva("Entre com um valor inteiro: ")
      leia(x)
      escreval
      escreval("O Quadrado de", x, " é", quadr(x))
      cubo(x)
      escreval
      escreva("Para? [s/n] ")
      leia(c)
      limpatela
      enquanto ((c <> "s") e (c <> "n")) faça
         escreval(c, " é inválido :/")
         escreval
         escreva("Para? [s/n] ")
         leia(c)
         limpatela
      fimenquanto
   até ((c <> "n") e (c = "s"))
fimalgoritmo