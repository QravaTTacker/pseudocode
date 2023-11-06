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
      para i de 1 até 29 faça
         escreva("=")
      fimpara
   caso 2
      para i de 1 até 29 faça
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
      escreval("| Você: Par")
      escreval("| PC: Impar")
   caso 2
      painel(0)
      escreval("| Você: Impar")
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
         se (op = "p") ou (op = "par") então
            op2 <- "1"
         senão
            se (op = "impar") ou (op = "i") então
               op2 <- "2"
            senão
               limpatela
            fimse
         fimse
      até (op2 = "1") ou (op2 = "2")
      se (op2 = "1") então
         painel(1)
      senão
         se (op2 = "2") então
            painel(2)
         fimse
      fimse
      msg(2)
      escreva("| Número: ")
      leia(usr)
      limpatela
      pc <- randi(10)
      se (op2 = "1") então
         painel(1)
      senão
         se (op2 = "2") então
            painel(2)
         fimse
      fimse
      msg(1)
      escreval("| Você:", usr)
      escreval("| PC:", pc)
      escreva("| Total:", usr+pc)
      se ((usr+pc) % 2 = 0 ) então
         escreval(" --> Par")
      senão
         escreval(" --> Ímpar")
      fimse
      msg(2)
      se (op2 = "1") então
         se ((pc + usr) % 2 = 0) então
            escreval("":8, " Você ganhou!")
            vit <- vit + 1
         senão
            escreval("":7, " Você perdeu :/")
            der <- der + 1
         fimse
      senão
         se (op2 = "2") então
            se ((pc + usr) % 2 <> 0) então
               escreval("":7, " Você ganhou!")
               vit <- vit + 1
            senão
               escreval("":7, " Você perdeu :/")
               der <- der + 1
            fimse
         fimse
      fimse
      msg(1)
      escreva(" Para? [s/n] ")
      leia(op2)
      op2 <- minusc(op2)
      limpatela
   até (op2 = "sim") ou (op2 = "si") ou (op2 = "s")
   msg(1)
   escreval("| Vitórias:", vit)
   escreval("| Derrotas:", der)
   msg(1)
fimalgoritmo