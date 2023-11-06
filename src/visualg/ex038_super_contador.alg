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
      escreva("Qual opção deseja? ")
      leia(r)
      escreval
      se(r = 1)então
         i <- 1
         repita
            escreva(i, "..")
            i <- i + 1
         até(i > 10)
         escreval
      senão
         se(r = 2)então
            i <- 10
            repita
               escreva(i, "..")
               i <- i - 1
            até(i < 1)
            escreval
         senão
            se((r > 3) e (r <> 3))então
               escreval("        Falso")
            fimse
         fimse
      fimse
   até(r = 3)
   escreval("       Saindo...")
   escreval
   escreval("======================")
fimalgoritmo