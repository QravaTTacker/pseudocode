algoritmo "Jogo da Velha"
var
   i, j, x, XO, usr, op, win_x, win_o, emp: inteiro
   win, parar : caractere
   A, B: vetor[1..3, 1..3] de caractere

procedimento painel_menu()
inicio
   escreval("========================")
   escreval(" Player vs Player...[1] ")
   escreval(" Player vs IA.......[2] ")
   escreval("========================")
fimprocedimento

procedimento painel_jogo()
inicio
   escreval("=======================")
   escreval("    -+---+---+---+-")
   para i de 1 at� 3 fa�a
      escreva("    ")
      para j de 1 at� 3 fa�a
         escreva(" | ", B[i,j])
         se (j = 3) ent�o
            escreval(" |")
         fimse
      fimpara
      escreval("    -+---+---+---+-")
   fimpara
   escreval("=======================")
fimprocedimento

procedimento posicoes()
var
   n : inteiro
inicio
   n <- 1
   para i de 1 at� 3 fa�a
      para j de 1 at� 3 fa�a
         A[i,j] <- numpcarac(n)
         B[i,j] <- numpcarac(n)
         n <- n + 1
      fimpara
   fimpara
   painel_jogo()
fimprocedimento

procedimento bot()
var
   sair : logico
inicio
   sair <- Falso
   se (((B[1,1] = B[3,3]) e (B[1,1] = "")) ou ((B[1,3] = B[3,1]) e (B[1,3] = "O")) ou ((B[1,2] = B[3,2]) e (B[1,2] = "O")) ou ((B[2,1] = B[2,3]) e (B[2,1] = "O"))) e (B[2,2] <> "X") e (B[2,2] <> "O") ent�o
      B[2,2] <- "O"
   sen�o
      se (((B[1,2] = B[1,3]) e (B[1,2] = "O")) ou ((B[2,1] = B[3,1]) e (B[2,1] = "O")) ou ((B[2,2] = B[3,3]) e (B[2,2] = "O"))) e (B[1,1] <> "X") e (B[1,1] <> "O") ent�o
         B[1,1] <- "O"
      sen�o
         se (((B[1,1] = B[1,2]) e (B[1,1] = "O")) ou ((B[2,3] = B[3,3]) e (B[2,3] = "O")) ou ((B[2,2] = B[3,1]) e (B[2,2] = "O"))) e (B[1,3] <> "X") e (B[1,3] <> "O") ent�o
            B[1,3] <- "O"
         sen�o
            se (((B[1,1] = B[2,1]) e (B[1,1] = "O")) ou ((B[3,2] = B[3,3]) e (B[3,2] = "O")) ou ((B[2,2] = B[1,3]) e (B[2,2] = "O"))) e (B[3,1] <> "X") e (B[3,1] <> "O") ent�o
               B[3,1] <- "O"
            sen�o
               se (((B[1,1] = B[2,2]) e (B[1,1] = "O")) ou ((B[3,1] = B[3,2]) e (B[3,1] = "O")) ou ((B[1,3] = B[2,3]) e (B[1,3] = "O"))) e (B[3,3] <> "X") e (B[3,3] <> "O") ent�o
                  B[3,3] <- "O"
               sen�o
                  se (((B[1,1] = B[1,3]) e (B[1,1] = "O")) ou ((B[2,2] = B[3,2]) e (B[2,2] = "O"))) e (B[1,2] <> "X") e (B[1,2] <> "O") ent�o
                     B[1,2] <- "O"
                  sen�o
                     se (((B[3,1] = B[3,3]) e (B[3,1] = "O")) ou ((B[1,2] = B[2,2]) e (B[1,2] = "O"))) e (B[3,2] <> "X") e (B[3,2] <> "O") ent�o
                        B[3,2] <- "O"
                     sen�o
                        se (((B[1,1] = B[3,1]) e (B[1,1] = "O")) ou ((B[2,2] = B[2,3]) e (B[2,2] = "O"))) e (B[2,1] <> "X") e (B[2,1] <> "O") ent�o
                           B[2,1] <- "O"
                        sen�o
                           se (((B[1,3] = B[3,3]) e (B[1,3] = "O")) ou ((B[2,1] = B[2,2]) e (B[2,1] = "O"))) e (B[2,3] <> "X") e (B[2,3] <> "O") ent�o
                              B[2,3] <- "O"
                           sen�o
                              se (((B[1,1] = B[3,3]) e (B[1,1] = "X")) ou ((B[1,3] = B[3,1]) e (B[1,3] = "X")) ou ((B[1,2] = B[3,2]) e (B[1,2] = "X")) ou ((B[2,1] = B[2,3]) e (B[2,1] = "X"))) e (B[2,2] <> "X") e (B[2,2] <> "O") ent�o
                                 B[2,2] <- "O"
                              sen�o
                                 se (((B[1,2] = B[1,3]) e (B[1,2] = "X")) ou ((B[2,1] = B[3,1]) e (B[2,1] = "X")) ou ((B[2,2] = B[3,3]) e (B[2,2] = "X"))) e (B[1,1] <> "X") e (B[1,1] <> "O") ent�o
                                    B[1,1] <- "O"
                                 sen�o
                                    se (((B[1,1] = B[1,2]) e (B[1,1] = "X")) ou ((B[2,3] = B[3,3]) e (B[2,3] = "X")) ou ((B[2,2] = B[3,1]) e (B[2,2] = "X"))) e (B[1,3] <> "X") e (B[1,3] <> "O") ent�o
                                       B[1,3] <- "O"
                                    sen�o
                                       se (((B[1,1] = B[2,1]) e (B[1,1] = "X")) ou ((B[3,2] = B[3,3]) e (B[3,2] = "X")) ou ((B[2,2] = B[1,3]) e (B[2,2] = "X"))) e (B[3,1] <> "X") e (B[3,1] <> "O") ent�o
                                          B[3,1] <- "O"
                                       sen�o
                                          se (((B[1,1] = B[2,2]) e (B[1,1] = "X")) ou ((B[3,1] = B[3,2]) e (B[3,1] = "X")) ou ((B[1,3] = B[2,3]) e (B[1,3] = "X"))) e (B[3,3] <> "X") e (B[3,3] <> "O") ent�o
                                             B[3,3] <- "O"
                                          sen�o
                                             se (((B[1,1] = B[1,3]) e (B[1,1] = "X")) ou ((B[2,2] = B[3,2]) e (B[2,2] = "X"))) e (B[1,2] <> "X") e (B[1,2] <> "O") ent�o
                                                B[1,2] <- "O"
                                             sen�o
                                                se (((B[3,1] = B[3,3]) e (B[3,1] = "X")) ou ((B[1,2] = B[2,2]) e (B[1,2] = "X"))) e (B[3,2] <> "X") e (B[3,2] <> "O") ent�o
                                                   B[3,2] <- "O"
                                                sen�o
                                                   se (((B[1,1] = B[3,1]) e (B[1,1] = "X")) ou ((B[2,2] = B[2,3]) e (B[2,2] = "X"))) e (B[2,1] <> "X") e (B[2,1] <> "O") ent�o
                                                      B[2,1] <- "O"
                                                   sen�o
                                                      se (((B[1,3] = B[3,3]) e (B[1,3] = "X")) ou ((B[2,1] = B[2,2]) e (B[2,1] = "X"))) e (B[2,3] <> "X") e (B[2,3] <> "O") ent�o
                                                         B[2,3] <- "O"
                                                      sen�o
                                                         repita
                                                            para i de 1 at� 3 fa�a
                                                               para j de 1 at� 3 fa�a
                                                                  se (A[i,j] = numpcarac(randi(8) + 1)) e (B[i,j] <> "X") e (B[i,j] <> "O") ent�o
                                                                     B[i,j] <- "O"
                                                                     sair <- Verdadeiro
                                                                     interrompa
                                                                  fimse
                                                               fimpara
                                                               se (sair) ent�o
                                                                  interrompa
                                                               fimse
                                                            fimpara
                                                         at� (sair = Verdadeiro)
                                                      fimse
                                                   fimse
                                                fimse
                                             fimse
                                          fimse
                                       fimse
                                    fimse
                                 fimse
                              fimse
                           fimse
                        fimse
                     fimse
                  fimse
               fimse
            fimse
         fimse
      fimse
   fimse
   x <- x + 1
   XO <- XO + 1
fimprocedimento

procedimento jogo(s, v: inteiro)
var
   letra : caractere
   sair : logico
inicio
   sair <- Falso
   se (v % 2 = 0) ent�o
      letra <- "X"
   sen�o
      letra <- "O"
   fimse
   para i de 1 at� 3 fa�a
      para j de 1 at� 3 fa�a
         se (A[i,j] = numpcarac(s)) e (B[i,j] <> "X") e (B[i,j] <> "O") ent�o
            B[i,j] <- letra
            x <- x + 1
            XO <- XO + 1
            se (validar() = Falso) e (x <= 8) e (op = 2) ent�o
               bot()
            fimse
            sair <- Verdadeiro
            interrompa
         fimse
      fimpara
      se (sair) ent�o
         interrompa
      fimse
   fimpara
   painel_jogo()
fimprocedimento

fun��o validar(): logico
inicio
   se (x >= 5) ent�o
      se (B[1,1] = B[1,2]) e (B[1,2] = B[1,3]) ent�o
         win <- B[1,1]
         retorne Verdadeiro
      sen�o
         se (B[2,1] = B[2,2]) e (B[2,2] = B[2,3]) ent�o
            win <- B[2,1]
            retorne Verdadeiro
         sen�o
            se (B[3,1] = B[3,2]) e (B[3,2] = B[3,3]) ent�o
               win <- B[3,1]
               retorne Verdadeiro
            sen�o
               se (B[1,1] = B[2,1]) e (B[2,1] = B[3,1]) ent�o
                  win <- B[1,1]
                  retorne Verdadeiro
               sen�o
                  se (B[1,2] = B[2,2]) e (B[2,2] = B[3,2]) ent�o
                     win <- B[1,2]
                     retorne Verdadeiro
                  sen�o
                     se (B[1,3] = B[2,3]) e (B[2,3] = B[3,3]) ent�o
                        win <- B[1,3]
                        retorne Verdadeiro
                     sen�o
                        se (B[1,1] = B[2,2]) e (B[2,2] = B[3,3]) ent�o
                           win <- B[1,1]
                           retorne Verdadeiro
                        sen�o
                           se (B[3,1] = B[2,2]) e (B[2,2] = B[1,3]) ent�o
                              win <- B[3,1]
                              retorne Verdadeiro
                           sen�o
                              retorne Falso
                           fimse
                        fimse
                     fimse
                  fimse
               fimse
            fimse
         fimse
      fimse
   sen�o
      retorne Falso
   fimse
fimfun��o

inicio
   win_x <- 0
   win_o <- 0
   emp <- 0
   repita
      x <- 0
      XO <- 0
      win <- ""
      repita
         painel_menu()
         escreva(" Op��o >>> ")
         leia(op)
         limpatela
      at� (op = 1) ou (op = 2)
      posicoes()
      repita
         se (XO % 2 = 0) ent�o
            escreva(" Posi��o de [X]: ")
         sen�o
            escreva(" Posi��o de [O]: ")
         fimse
         leia(usr)
         limpatela
         jogo(usr, XO)
      at� (validar() = Verdadeiro) ou (x = 9)
      escreval("      Fim de jogo      ")
      escreval("-----------------------")
      escreval()
      se (win = "") ent�o
         escreval("":8, "Empate")
         emp <- emp + 1
      sen�o
         escreval("":7, win + " Ganhou!")
         se (win = "X") ent�o
            win_x <- win_x + 1
         sen�o
            win_o <- win_o + 1
         fimse
      fimse
      escreval()
      escreval(" N�mero de jogadas:", x)
      escreval("=======================")
      escreva(" Parar? [s/n] ")
      leia(parar)
      parar <- minusc(parar)
      limpatela
   at� (parar = "s") ou (parar = "si") ou (parar = "sim")
   escreval(" Vit�rias de X:", win_x)
   escreval(" Vit�rias de O:", win_o)
   escreval(" Empates:", emp)
fimalgoritmo