algoritmo "semnome"
var
   operador : vetor[1..4] de caractere
   op, parar: caractere
   n1, n2, usr, pontos, vida: inteiro

procedimento painel()
inicio
   escreval("====================")
   escreval(" Jogo Da Aritm�tica ")
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
         escreva(" Quanto �", n1, " +", n2, "? ")
         leia(usr)
         escreval()
         se (usr = n1+n2) ent�o
            escreval("    Voc� acertou!")
            pontos <- pontos + 1
         sen�o
            escreval("    Voc� errou :/")
            vida <- vida - 1
         fimse
      caso "-"
         n1 <- randi(11)
         n2 <- randi(11)
         escreva(" Quanto �", n1, " -", n2, "? ")
         leia(usr)
         escreval()
         se (usr = n1-n2) ent�o
            escreval("    Voc� acertou!")
            pontos <- pontos + 2
         sen�o
            escreval("    Voc� errou :/")
            vida <- vida - 1
         fimse
      caso "*"
         n1 <- randi(11)
         n2 <- randi(11)
         escreva(" Quanto �", n1, " *", n2, "? ")
         leia(usr)
         escreval()
         se (usr = n1*n2) ent�o
            escreval("    Voc� acertou!")
            pontos <- pontos + 5
         sen�o
            escreval("    Voc� errou :/")
            vida <- vida - 1
         fimse
      caso "/"
         n1 <- randi(11)
         n2 <- randi(10)+1
         escreva (" Quanto �", n1, " /", n2, "? ")
         leia(usr)
         escreval()
         se (usr = n1/n2) ent�o
            escreval("    Voc� acertou!")
            pontos <- pontos + 8
         sen�o
            escreval("    Voc� errou :/")
            vida <- vida - 1
         fimse
      fimescolha
      escreval()
      escreval("--------------------")
      escreval("| Vidas:", vida)
      escreval("| Pontos:", pontos)
      escreval("====================")
      se (vida <> 0) ent�o
         escreva(" Para? [s/n] >>> ")
         leia(parar)
         parar <- minusc(parar)
         limpatela
      fimse
   at� (vida = 0) ou (parar = "s") ou (parar = "si") ou (parar = "sim")
   limpatela
   painel()
   escreval("| Vidas:", vida)
   escreval("| Pontua��o:", pontos)
   escreval("====================")
fimalgoritmo