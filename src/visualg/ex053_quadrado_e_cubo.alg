algoritmo "Quadrado e Cubo"
var
   x, y : inteiro
inicio
   y <- 0
   escreval("------------- FOR -------------")
   escreval("Número     Quadrado      Cubo")
   para x := 0 até 10 faça
      escreval(y:3, exp(y,2):13, exp(y,3):13)
      y <- y + 1
   fimpara
   escreval
   escreval
   y <- 0
   x <- 0
   escreval("------------ WHILE ------------")
   escreval("Número     Quadrado      Cubo")
   enquanto (x <= 10) faça
      escreval(y:3, exp(y,2):13, exp(y,3):13)
      y <- y + 1
      x <- x + 1
   fimenquanto
   escreval
   escreval
   y <- 0
   x <- 0
   escreval("----------- DO WHILE -----------")
   escreval("Número     Quadrado      Cubo")
   repita
      escreval(y:3, exp(y,2):13, exp(y,3):13)
      y <- y + 1
      x <- x + 1
   até(x > 10)
   escreval
   escreval
   escreval("--------------------------------")
fimalgoritmo