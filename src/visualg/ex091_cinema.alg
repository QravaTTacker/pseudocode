algoritmo "Cinema"
var
   x, x2 : vetor[1..10] de caractere
   i, j, usr_loko : inteiro
   op, x_usr : caractere

procedimento msg(tam : inteiro)
inicio
   tam <- abs(tam)
   para i <- 1 at� tam fa�a
      escreva("=")
   fimpara
   escreval
fimprocedimento

inicio
   para i <- 1 at� 10 fa�a
      x[i] <- "B" + numpcarac(i)
   fimpara
   para i <- 1 at� 10 fa�a
      x2[i] <- "B" + numpcarac(i)
   fimpara
   repita
      limpatela
      msg(50)
      para i <- 1 at� 10 fa�a
         escreva("[", x2[i], "] ")
      fimpara
      escreval
      msg(50)

      escreva(" Reservar a cadeira: ")
      leia(x_usr)
      para i <- 1 at� 10 fa�a
         se ((maiusc(x_usr) = x[i]) e (x2[i] <> "--")) ent�o
            x2[i] <- "--"
            escreval(" Cadeira " + maiusc(x_usr) + " reservada!")
            interrompa
         sen�o
            se ((maiusc(x_usr) = x[i]) e (x2[i] = "--")) ent�o
               escreval(" Esse lugar j� est� reservado! :/")
               interrompa
            sen�o
               usr_loko <- 0
               para j <- 1 at� 10 fa�a
                  se (maiusc(x_usr) <> x[j]) ent�o
                     usr_loko <- usr_loko + 1
                  fimse
               fimpara
               se (usr_loko = 10) entao
                  escreval(" Esse lugar n�o existe loko ksks")
                  interrompa
               fimse
            fimse
         fimse
      fimpara
      escreval("------------------")
      se (usr_loko = 10) ent�o
         escreva(" Reservar uma (dentro das op��es)? [s/n] >> ")
      sen�o
         escreva(" Reservar outra? [s/n] >> ")
      fimse
      leia(op)
      op <- minusc(op)
   at� ((op = "n") ou (op = "no") ou (op = "n�o") ou (op = "n�o"))
   limpatela
   msg(50)
   escreval("| ":16, "Lugares Reservados":32, " |")
   msg(50)
   para i <- 1 at� 10 fa�a
      escreva("[", x2[i], "] ")
   fimpara
   escreval
   msg(50)
fimalgoritmo