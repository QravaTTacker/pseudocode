algoritmo "Matriz 3x2"
var
   mat : vetor[1..3, 1..2] de inteiro
   i, j : inteiro
   op : caractere

procedimento msg(tam : inteiro)
inicio
   para i <- 1 até abs(tam) faça
      escreva("=")
   fimpara
   escreval
fimprocedimento

função painel(): caractere
var
   x : caractere
inicio
   escreval(" Elementos Aleatórios......[1]")
   escreval(" Elementos Preenchidos.....[2]")
   escreval(" Finaliar Aplicação........[3]")
   escreval("------------------")
   escreva(" Opção >>> ")
   leia(x)
   retorne x
fimfunção

inicio
   timer 0
   repita
      msg(40)
      escreval("":15, "Matriz 3x2")
      msg(40)
      op <- painel()
      msg(30)
      se (op = "1") então
         para i <- 1 até 3 faça
            para j <- 1 até 2 faça
               escreva(" Elemento a", i, "x", j:1, ": ")
               leia(mat[i,j])
            fimpara
         fimpara
         msg(20)
         para i <- 1 até 3 faça
            escreva("   |")
            para j <- 1 até 2 faça
               escreva(mat[i,j]:3)
               escreva(" ")
            fimpara
            escreva(" |")
            escreval
         fimpara
         msg(30)
      senão
         se (op = "2") então
            para i <- 1 até 3 faça
               para j <- 1 até 2 faça
                  mat[i, j] <- randi(99)
               fimpara
            fimpara
            para i <- 1 até 3 faça
               escreva("   |")
               para j <- 1 até 2 faça
                  escreva(mat[i, j]:3)
                  escreva(" ")
               fimpara
               escreva("|")
               escreval
            fimpara
            msg(30)
         senão
            se (op = "3") então
               interrompa
            senão
               escreval(" Opção inválida :/")
               msg(20)
            fimse
         fimse
      fimse
      repita
         escreva(" Para? [s/n] >>> ")
         leia(op)
         se ((minusc(op) = "s") ou (minusc(op) = "n")) então
            interrompa
         fimse
         limpatela
      até Falso
      limpatela
   até ((op = "3") ou (op = "s"))
fimalgoritmo