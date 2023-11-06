algoritmo "Dados"
var
   a, b : inteiro
inicio
   escreval("------ FOR ------")
   para a := 1 até 6 faça
      para b := 1 até 6 faça
         se(a+b=7)então
            escreval("Dado 1:", a)
            escreval("Dado 2:", b)
         fimse
      fimpara
      escreval("-----------------")
   fimpara
   escreval
   escreval
   escreval
   escreval("----- WHILE -----")
   a <- 1
   enquanto (a<=6) faça
      b <- 1
      enquanto (b<=6) faça
         se(a+b=7)então
            escreval("Dado 1:", a)
            escreval("Dado 2:", b)
         fimse
         b <- b + 1
      fimenquanto
      escreval("-----------------")
      a <- a + 1
   fimenquanto
   escreval
   escreval
   escreval
   escreval("---- DO WHILE ----")
   a <- 1
   repita
      b <- 1
      repita
         se(a+b=7)então
            escreval("Dado 1:", a)
            escreval("Dado 2:", b)
         fimse
         b <- b + 1
      até(b>6)
      escreval("------------------")
      a <- a + 1
   até(a>6)
fimalgoritmo