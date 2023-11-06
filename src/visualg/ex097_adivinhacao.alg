algoritmo "Adivinhação"
var
   usr, pc, vezes : inteiro
inicio
   vezes <- 0
   escreval("================================================")
   pc <- randi(11)
   escreval(" De 0 a 10, em que número estou pensando? ")
   repita
      escreva(" >>> ")
      leia(usr)
      se (usr > pc) então
         escreval(" é menos...")
      senão
         se (usr < pc) então
            escreval(" é mais...")
         fimse
      fimse
      vezes <- vezes + 1
   até (usr = pc)
   escreval("-----------------------------------------")
   se (vezes = 1) então
      escreval(" Você acertou de primeira!")
   senão
      se (vezes >= 2) e (vezes <= 10) então
         escreval(" Você precisou chutar", vezes, " vezes para acertar!")
      senão
         escreval(" Você acertou na última tentativa!")
      fimse
   fimse
   escreval("================================================")
fimalgoritmo