algoritmo "Matriz 3x2"
var
   mat : vetor[1..3, 1..2] de inteiro
   i, j : inteiro
   op : caractere

procedimento msg(tam : inteiro)
inicio
   para i <- 1 at� abs(tam) fa�a
      escreva("=")
   fimpara
   escreval
fimprocedimento

fun��o painel(): caractere
var
   x : caractere
inicio
   escreval(" Elementos Aleat�rios......[1]")
   escreval(" Elementos Preenchidos.....[2]")
   escreval(" Finaliar Aplica��o........[3]")
   escreval("------------------")
   escreva(" Op��o >>> ")
   leia(x)
   retorne x
fimfun��o

inicio
   timer 0
   repita
      msg(40)
      escreval("":15, "Matriz 3x2")
      msg(40)
      op <- painel()
      msg(30)
      se (op = "1") ent�o
         para i <- 1 at� 3 fa�a
            para j <- 1 at� 2 fa�a
               escreva(" Elemento a", i, "x", j:1, ": ")
               leia(mat[i,j])
            fimpara
         fimpara
         msg(20)
         para i <- 1 at� 3 fa�a
            escreva("   |")
            para j <- 1 at� 2 fa�a
               escreva(mat[i,j]:3)
               escreva(" ")
            fimpara
            escreva(" |")
            escreval
         fimpara
         msg(30)
      sen�o
         se (op = "2") ent�o
            para i <- 1 at� 3 fa�a
               para j <- 1 at� 2 fa�a
                  mat[i, j] <- randi(99)
               fimpara
            fimpara
            para i <- 1 at� 3 fa�a
               escreva("   |")
               para j <- 1 at� 2 fa�a
                  escreva(mat[i, j]:3)
                  escreva(" ")
               fimpara
               escreva("|")
               escreval
            fimpara
            msg(30)
         sen�o
            se (op = "3") ent�o
               interrompa
            sen�o
               escreval(" Op��o inv�lida :/")
               msg(20)
            fimse
         fimse
      fimse
      repita
         escreva(" Para? [s/n] >>> ")
         leia(op)
         se ((minusc(op) = "s") ou (minusc(op) = "n")) ent�o
            interrompa
         fimse
         limpatela
      at� Falso
      limpatela
   at� ((op = "3") ou (op = "s"))
fimalgoritmo