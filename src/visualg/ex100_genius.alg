algoritmo "Genius"
var
   valores, usr: vetor[1..20] de inteiro
   op, i, j, vida : inteiro
inicio
   vida <- 3
   repita
      escreval("=========================")
      escreval("|        Genius         |")
      escreval("=========================")
      escreval("| F�cil.............[1] |")
      escreval("| Normal............[2] |")
      escreval("| Dif�cil...........[3] |")
      escreval("=========================")
      escreva(" Dificuldade: ")
      leia(op)
      limpatela
   at� (op = 1) ou (op = 2) ou (op = 3)
   escolha op
   caso 1
      para i de 1 at� 8 fa�a
         valores[i] <- randi(10)
      fimpara
      i <- 1
      enquanto (i <= 8) e (vida > 0) fa�a
         escreval("=====================================")
         para j de 1 at� i fa�a
            timer 400
            escreva(" ", valores[j])
            timer 0
            se (j % 5 = 0) ent�o
               escreval()
            fimse
         fimpara
         timer 300
         limpatela
         timer 0
         escreval("=====================================")
         j <- 0
         repita
            j <- j + 1
            repita
               escreva(j, "� valor: ")
               leia(usr[j])
               se (usr[j] <> valores[j]) ent�o
                  vida <- vida - 1
                  escreva("-------------------------> ")
                  escreval(" Vidas:", vida)
               fimse
            at� (usr[j] = valores[j]) ou (vida = 0)
         at� (j = i) ou (vida = 0)
         i <- i + 1
      fimenquanto
   caso 2
      para i de 1 at� 15 fa�a
         valores[i] <- randi(10)
      fimpara
      i <- 1
      enquanto (i <= 15) e (vida > 0) fa�a
         escreval("=====================================")
         para j de 1 at� i fa�a
            timer 400
            escreva(" ", valores[j])
            timer 0
            se (j % 5 = 0) ent�o
               escreval()
            fimse
         fimpara
         timer 300
         limpatela
         timer 0
         escreval("=====================================")
         j <- 0
         repita
            j <- j + 1
            repita
               escreva(j, "� valor: ")
               leia(usr[j])
               se (usr[j] <> valores[j]) ent�o
                  vida <- vida - 1
                  escreva("-------------------------> ")
                  escreval(" Vidas:", vida)
               fimse
            at� (usr[j] = valores[j]) ou (vida = 0)
         at� (j = i) ou (vida = 0)
         i <- i + 1
      fimenquanto
   caso 3
      para i de 1 at� 20 fa�a
         valores[i] <- randi(10)
      fimpara
      i <- 1
      enquanto (i <= 20) e (vida > 0) fa�a
         escreval("=====================================")
         para j de 1 at� i fa�a
            timer 400
            escreva(" ", valores[j])
            timer 0
            se (j % 5 = 0) ent�o
               escreval()
            fimse
         fimpara
         timer 300
         limpatela
         timer 0
         escreval("=====================================")
         j <- 0
         repita
            j <- j + 1
            repita
               escreva(j, "� valor: ")
               leia(usr[j])
               se (usr[j] <> valores[j]) ent�o
                  vida <- vida - 1
                  escreva("-------------------------> ")
                  escreval(" Vidas:", vida)
               fimse
            at� (usr[j] = valores[j]) ou (vida = 0)
         at� (j = i) ou (vida = 0)
         i <- i + 1
      fimenquanto
   fimescolha
   escreval("=====================================")
   se (vida  > 0) ent�o
      escreval("            Voc� Ganhou!!            ")
   sen�o
      escreval("             Gamer Over             ")
   fimse
   escreval("=====================================")
fimalgoritmo