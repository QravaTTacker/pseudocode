algoritmo "PPT"
var
   usr, pc, der, vit, emp : inteiro
   op : caractere
procedimento sts(x, y, z : inteiro)
inicio
   escreval("==========================")
   escreval("| Vit�rias:", x)
   escreval("| Empates:", y)
   escreval("| Derrotas:", z)
   escreval("==========================")
fimprocedimento
inicio
   vit <- 0
   der <- 0
   emp <- 0
   repita
      repita
         escrevaL("==========================")
         escreval(" Pedra................[1] ")
         escreval(" Papel................[2] ")
         escreval(" Tesoura..............[3] ")
         escreval("==========================")
         escreva(" Op��o: ")
         leia(usr)
         se n�o ((usr = 1) ou (usr = 2) ou (usr = 3)) ent�o
            limpatela
         fimse
      at� (usr = 1) ou (usr = 2) ou (usr = 3)
      escreval("--------------------------")
      timer 600
      escreval("    Jo...")
      escreval("          Ken...")
      escreval("                 Po!")
      timer 0
      escreval("--------------------------")
      pc <- randi(3) + 1
      escolha (usr)
      caso 1
         se (pc = 1) ent�o
            escreval("| Voc�: Pedra")
            escreval("| PC: Pedra")
            escreval("==========================")
            escreval("":9, " Empate ")
            emp <- emp + 1
         sen�o
            se (pc = 2) ent�o
               escreval("| Voc�: Pedra")
               escreval("| PC: Papel")
               escreval("==========================")
               escreval("":9, " Derrota ")
               der <- der + 1
            sen�o
               se (pc = 3) ent�o
                  escreval("| Voc�: Pedra")
                  escreval("| PC: Tesoura")
                  escreval("==========================")
                  escreval("":9, " Vit�ria ")
                  vit <- vit + 1
               fimse
            fimse
         fimse
      caso 2
         se (pc = 1) ent�o
            escreval("| Voc�: Papel")
            escreval("| PC: Pedra")
            escreval("==========================")
            escreval("":9, " Vit�ria ")
            vit <- vit + 1
         sen�o
            se (pc = 2) ent�o
               escreval("| Voc�: Papel")
               escreval("| PC: Papel")
               escreval("==========================")
               escreval("":9, " Empate ")
               emp <- emp + 1
            sen�o
               se (pc = 3) ent�o
                  escreval("| Voc�: Papel")
                  escreval("| PC: Tesoura")
                  escreval("==========================")
                  escreval("":9, " Derrota ")
                  der <- der + 1
               fimse
            fimse
         fimse
      caso 3
         se (pc = 1) ent�o
            escreval("| Voc�: Tesoura")
            escreval("| PC: Pedra")
            escreval("==========================")
            escreval("":9, " Derrota ")
            der <- der + 1
         sen�o
            se (pc = 2) ent�o
               escreval("| Voc�: Tesoura")
               escreval("| PC: Papel")
               escreval("==========================")
               escreval("":9, " Vit�ria ")
               vit <- vit + 1
            sen�o
               se (pc = 3) ent�o
                  escreval("| Voc�: Tesoura")
                  escreval("| PC: Tesoura")
                  escreval("==========================")
                  escreval("":9, " Empate ")
                  emp <- emp + 1
               fimse
            fimse
         fimse
      fimescolha
      sts(vit, emp, der)
      escreva(" Para? [s/n] ")
      leia(op)
      op <- minusc(op)
      limpatela
   at� (op = "s") ou (op = "sim") ou (op = "s")
   sts(vit, emp, der)
fimalgoritmo