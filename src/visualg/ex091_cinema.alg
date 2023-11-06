algoritmo "Cinema"
var
   x, x2 : vetor[1..10] de caractere
   i, j, usr_loko : inteiro
   op, x_usr : caractere

procedimento msg(tam : inteiro)
inicio
   tam <- abs(tam)
   para i <- 1 até tam faça
      escreva("=")
   fimpara
   escreval
fimprocedimento

inicio
   para i <- 1 até 10 faça
      x[i] <- "B" + numpcarac(i)
   fimpara
   para i <- 1 até 10 faça
      x2[i] <- "B" + numpcarac(i)
   fimpara
   repita
      limpatela
      msg(50)
      para i <- 1 até 10 faça
         escreva("[", x2[i], "] ")
      fimpara
      escreval
      msg(50)

      escreva(" Reservar a cadeira: ")
      leia(x_usr)
      para i <- 1 até 10 faça
         se ((maiusc(x_usr) = x[i]) e (x2[i] <> "--")) então
            x2[i] <- "--"
            escreval(" Cadeira " + maiusc(x_usr) + " reservada!")
            interrompa
         senão
            se ((maiusc(x_usr) = x[i]) e (x2[i] = "--")) então
               escreval(" Esse lugar já está reservado! :/")
               interrompa
            senão
               usr_loko <- 0
               para j <- 1 até 10 faça
                  se (maiusc(x_usr) <> x[j]) então
                     usr_loko <- usr_loko + 1
                  fimse
               fimpara
               se (usr_loko = 10) entao
                  escreval(" Esse lugar não existe loko ksks")
                  interrompa
               fimse
            fimse
         fimse
      fimpara
      escreval("------------------")
      se (usr_loko = 10) então
         escreva(" Reservar uma (dentro das opções)? [s/n] >> ")
      senão
         escreva(" Reservar outra? [s/n] >> ")
      fimse
      leia(op)
      op <- minusc(op)
   até ((op = "n") ou (op = "no") ou (op = "não") ou (op = "não"))
   limpatela
   msg(50)
   escreval("| ":16, "Lugares Reservados":32, " |")
   msg(50)
   para i <- 1 até 10 faça
      escreva("[", x2[i], "] ")
   fimpara
   escreval
   msg(50)
fimalgoritmo