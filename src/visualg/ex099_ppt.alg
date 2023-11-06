algoritmo "PPT"
var
   usr, pc, der, vit, emp : inteiro
   op : caractere
procedimento sts(x, y, z : inteiro)
inicio
   escreval("==========================")
   escreval("| Vitórias:", x)
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
         escreva(" Opção: ")
         leia(usr)
         se não ((usr = 1) ou (usr = 2) ou (usr = 3)) então
            limpatela
         fimse
      até (usr = 1) ou (usr = 2) ou (usr = 3)
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
         se (pc = 1) então
            escreval("| Você: Pedra")
            escreval("| PC: Pedra")
            escreval("==========================")
            escreval("":9, " Empate ")
            emp <- emp + 1
         senão
            se (pc = 2) então
               escreval("| Você: Pedra")
               escreval("| PC: Papel")
               escreval("==========================")
               escreval("":9, " Derrota ")
               der <- der + 1
            senão
               se (pc = 3) então
                  escreval("| Você: Pedra")
                  escreval("| PC: Tesoura")
                  escreval("==========================")
                  escreval("":9, " Vitória ")
                  vit <- vit + 1
               fimse
            fimse
         fimse
      caso 2
         se (pc = 1) então
            escreval("| Você: Papel")
            escreval("| PC: Pedra")
            escreval("==========================")
            escreval("":9, " Vitória ")
            vit <- vit + 1
         senão
            se (pc = 2) então
               escreval("| Você: Papel")
               escreval("| PC: Papel")
               escreval("==========================")
               escreval("":9, " Empate ")
               emp <- emp + 1
            senão
               se (pc = 3) então
                  escreval("| Você: Papel")
                  escreval("| PC: Tesoura")
                  escreval("==========================")
                  escreval("":9, " Derrota ")
                  der <- der + 1
               fimse
            fimse
         fimse
      caso 3
         se (pc = 1) então
            escreval("| Você: Tesoura")
            escreval("| PC: Pedra")
            escreval("==========================")
            escreval("":9, " Derrota ")
            der <- der + 1
         senão
            se (pc = 2) então
               escreval("| Você: Tesoura")
               escreval("| PC: Papel")
               escreval("==========================")
               escreval("":9, " Vitória ")
               vit <- vit + 1
            senão
               se (pc = 3) então
                  escreval("| Você: Tesoura")
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
   até (op = "s") ou (op = "sim") ou (op = "s")
   sts(vit, emp, der)
fimalgoritmo