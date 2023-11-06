algoritmo "semnome"
var
   operador : vetor[1..4] de caractere
   op, parar: caractere
   n1, n2, usr, pontos, vida: inteiro

procedimento painel()
inicio
   escreval("====================")
   escreval(" Jogo Da Aritmética ")
   escreval("====================")
fimprocedimento

inicio
   vida <- 3
   pontos <- 0
   repita
      operador [1] <- "+"
      operador [2] <- "-"
      operador [3] <- "*"
      operador [4] <- "/"
      painel()
      op <- operador[randi(4) + 1]
      escolha op
      caso "+"
         n1 <- randi(11)
         n2 <- randi(11)
         escreva(" Quanto é", n1, " +", n2, "? ")
         leia(usr)
         escreval()
         se (usr = n1+n2) então
            escreval("    Você acertou!")
            pontos <- pontos + 1
         senão
            escreval("    Você errou :/")
            vida <- vida - 1
         fimse
      caso "-"
         n1 <- randi(11)
         n2 <- randi(11)
         escreva(" Quanto é", n1, " -", n2, "? ")
         leia(usr)
         escreval()
         se (usr = n1-n2) então
            escreval("    Você acertou!")
            pontos <- pontos + 2
         senão
            escreval("    Você errou :/")
            vida <- vida - 1
         fimse
      caso "*"
         n1 <- randi(11)
         n2 <- randi(11)
         escreva(" Quanto é", n1, " *", n2, "? ")
         leia(usr)
         escreval()
         se (usr = n1*n2) então
            escreval("    Você acertou!")
            pontos <- pontos + 5
         senão
            escreval("    Você errou :/")
            vida <- vida - 1
         fimse
      caso "/"
         n1 <- randi(11)
         n2 <- randi(10)+1
         escreva (" Quanto é", n1, " /", n2, "? ")
         leia(usr)
         escreval()
         se (usr = n1/n2) então
            escreval("    Você acertou!")
            pontos <- pontos + 8
         senão
            escreval("    Você errou :/")
            vida <- vida - 1
         fimse
      fimescolha
      escreval()
      escreval("--------------------")
      escreval("| Vidas:", vida)
      escreval("| Pontos:", pontos)
      escreval("====================")
      se (vida <> 0) então
         escreva(" Para? [s/n] >>> ")
         leia(parar)
         parar <- minusc(parar)
         limpatela
      fimse
   até (vida = 0) ou (parar = "s") ou (parar = "si") ou (parar = "sim")
   limpatela
   painel()
   escreval("| Vidas:", vida)
   escreval("| Pontuação:", pontos)
   escreval("====================")
fimalgoritmo