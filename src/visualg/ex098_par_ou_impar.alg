algoritmo "Par ou Impar"
var
   usr, pc, vit, der : inteiro
   op, op2 : caractere
procedimento msg(y : inteiro)
var
   i : inteiro
inicio
   escolha y
   caso 1
      para i de 1 at� 29 fa�a
         escreva("=")
      fimpara
   caso 2
      para i de 1 at� 29 fa�a
         escreva("-")
      fimpara
   fimescolha
   escreval()
fimprocedimento

procedimento painel(x : inteiro)
inicio
   limpatela
   escolha x
   caso 0
      msg(1)
      escreval("|        Par ou Impar       |")
      msg(1)
   caso 1
      painel(0)
      escreval("| Voc�: Par")
      escreval("| PC: Impar")
   caso 2
      painel(0)
      escreval("| Voc�: Impar")
      escreval("| PC: Par")
   fimescolha
fimprocedimento

inicio
   vit <- der <- 0
   repita
      repita
         painel(0)
         escreval(" Par ou Impar? [P/I]")
         msg(2)
         escreva(" >>> ")
         leia(op)
         msg(2)
         op <- minusc(op)
         se (op = "p") ou (op = "par") ent�o
            op2 <- "1"
         sen�o
            se (op = "impar") ou (op = "i") ent�o
               op2 <- "2"
            sen�o
               limpatela
            fimse
         fimse
      at� (op2 = "1") ou (op2 = "2")
      se (op2 = "1") ent�o
         painel(1)
      sen�o
         se (op2 = "2") ent�o
            painel(2)
         fimse
      fimse
      msg(2)
      escreva("| N�mero: ")
      leia(usr)
      limpatela
      pc <- randi(10)
      se (op2 = "1") ent�o
         painel(1)
      sen�o
         se (op2 = "2") ent�o
            painel(2)
         fimse
      fimse
      msg(1)
      escreval("| Voc�:", usr)
      escreval("| PC:", pc)
      escreva("| Total:", usr+pc)
      se ((usr+pc) % 2 = 0 ) ent�o
         escreval(" --> Par")
      sen�o
         escreval(" --> �mpar")
      fimse
      msg(2)
      se (op2 = "1") ent�o
         se ((pc + usr) % 2 = 0) ent�o
            escreval("":8, " Voc� ganhou!")
            vit <- vit + 1
         sen�o
            escreval("":7, " Voc� perdeu :/")
            der <- der + 1
         fimse
      sen�o
         se (op2 = "2") ent�o
            se ((pc + usr) % 2 <> 0) ent�o
               escreval("":7, " Voc� ganhou!")
               vit <- vit + 1
            sen�o
               escreval("":7, " Voc� perdeu :/")
               der <- der + 1
            fimse
         fimse
      fimse
      msg(1)
      escreva(" Para? [s/n] ")
      leia(op2)
      op2 <- minusc(op2)
      limpatela
   at� (op2 = "sim") ou (op2 = "si") ou (op2 = "s")
   msg(1)
   escreval("| Vit�rias:", vit)
   escreval("| Derrotas:", der)
   msg(1)
fimalgoritmo