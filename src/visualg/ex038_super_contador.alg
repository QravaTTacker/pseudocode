algoritmo "Super contador"
var
   i, r: inteiro
inicio
   repita
      escreval
      escreval("======================")
      escreval("|        MENU        |")
      escreval("======================")
      escreval("|[1] Contar de 1 a 10|")
      escreval("|[2] Contar de 10 a 1|")
      escreval("|[3] Sair            |")
      escreval("======================")
      escreva("Qual op��o deseja? ")
      leia(r)
      escreval
      se(r = 1)ent�o
         i <- 1
         repita
            escreva(i, "..")
            i <- i + 1
         at�(i > 10)
         escreval
      sen�o
         se(r = 2)ent�o
            i <- 10
            repita
               escreva(i, "..")
               i <- i - 1
            at�(i < 1)
            escreval
         sen�o
            se((r > 3) e (r <> 3))ent�o
               escreval("        Falso")
            fimse
         fimse
      fimse
   at�(r = 3)
   escreval("       Saindo...")
   escreval
   escreval("======================")
fimalgoritmo