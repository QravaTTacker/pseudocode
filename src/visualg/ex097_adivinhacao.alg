algoritmo "Adivinha��o"
var
   usr, pc, vezes : inteiro
inicio
   vezes <- 0
   escreval("================================================")
   pc <- randi(11)
   escreval(" De 0 a 10, em que n�mero estou pensando? ")
   repita
      escreva(" >>> ")
      leia(usr)
      se (usr > pc) ent�o
         escreval(" � menos...")
      sen�o
         se (usr < pc) ent�o
            escreval(" � mais...")
         fimse
      fimse
      vezes <- vezes + 1
   at� (usr = pc)
   escreval("-----------------------------------------")
   se (vezes = 1) ent�o
      escreval(" Voc� acertou de primeira!")
   sen�o
      se (vezes >= 2) e (vezes <= 10) ent�o
         escreval(" Voc� precisou chutar", vezes, " vezes para acertar!")
      sen�o
         escreval(" Voc� acertou na �ltima tentativa!")
      fimse
   fimse
   escreval("================================================")
fimalgoritmo