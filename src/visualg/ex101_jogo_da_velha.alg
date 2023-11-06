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
   para i de 1 até 3 faça
      escreva("    ")
      para j de 1 até 3 faça
         escreva(" | ", B[i,j])
         se (j = 3) então
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
   para i de 1 até 3 faça
      para j de 1 até 3 faça
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
   se (((B[1,1] = B[3,3]) e (B[1,1] = "")) ou ((B[1,3] = B[3,1]) e (B[1,3] = "O")) ou ((B[1,2] = B[3,2]) e (B[1,2] = "O")) ou ((B[2,1] = B[2,3]) e (B[2,1] = "O"))) e (B[2,2] <> "X") e (B[2,2] <> "O") então
      B[2,2] <- "O"
   senão
      se (((B[1,2] = B[1,3]) e (B[1,2] = "O")) ou ((B[2,1] = B[3,1]) e (B[2,1] = "O")) ou ((B[2,2] = B[3,3]) e (B[2,2] = "O"))) e (B[1,1] <> "X") e (B[1,1] <> "O") então
         B[1,1] <- "O"
      senão
         se (((B[1,1] = B[1,2]) e (B[1,1] = "O")) ou ((B[2,3] = B[3,3]) e (B[2,3] = "O")) ou ((B[2,2] = B[3,1]) e (B[2,2] = "O"))) e (B[1,3] <> "X") e (B[1,3] <> "O") então
            B[1,3] <- "O"
         senão
            se (((B[1,1] = B[2,1]) e (B[1,1] = "O")) ou ((B[3,2] = B[3,3]) e (B[3,2] = "O")) ou ((B[2,2] = B[1,3]) e (B[2,2] = "O"))) e (B[3,1] <> "X") e (B[3,1] <> "O") então
               B[3,1] <- "O"
            senão
               se (((B[1,1] = B[2,2]) e (B[1,1] = "O")) ou ((B[3,1] = B[3,2]) e (B[3,1] = "O")) ou ((B[1,3] = B[2,3]) e (B[1,3] = "O"))) e (B[3,3] <> "X") e (B[3,3] <> "O") então
                  B[3,3] <- "O"
               senão
                  se (((B[1,1] = B[1,3]) e (B[1,1] = "O")) ou ((B[2,2] = B[3,2]) e (B[2,2] = "O"))) e (B[1,2] <> "X") e (B[1,2] <> "O") então
                     B[1,2] <- "O"
                  senão
                     se (((B[3,1] = B[3,3]) e (B[3,1] = "O")) ou ((B[1,2] = B[2,2]) e (B[1,2] = "O"))) e (B[3,2] <> "X") e (B[3,2] <> "O") então
                        B[3,2] <- "O"
                     senão
                        se (((B[1,1] = B[3,1]) e (B[1,1] = "O")) ou ((B[2,2] = B[2,3]) e (B[2,2] = "O"))) e (B[2,1] <> "X") e (B[2,1] <> "O") então
                           B[2,1] <- "O"
                        senão
                           se (((B[1,3] = B[3,3]) e (B[1,3] = "O")) ou ((B[2,1] = B[2,2]) e (B[2,1] = "O"))) e (B[2,3] <> "X") e (B[2,3] <> "O") então
                              B[2,3] <- "O"
                           senão
                              se (((B[1,1] = B[3,3]) e (B[1,1] = "X")) ou ((B[1,3] = B[3,1]) e (B[1,3] = "X")) ou ((B[1,2] = B[3,2]) e (B[1,2] = "X")) ou ((B[2,1] = B[2,3]) e (B[2,1] = "X"))) e (B[2,2] <> "X") e (B[2,2] <> "O") então
                                 B[2,2] <- "O"
                              senão
                                 se (((B[1,2] = B[1,3]) e (B[1,2] = "X")) ou ((B[2,1] = B[3,1]) e (B[2,1] = "X")) ou ((B[2,2] = B[3,3]) e (B[2,2] = "X"))) e (B[1,1] <> "X") e (B[1,1] <> "O") então
                                    B[1,1] <- "O"
                                 senão
                                    se (((B[1,1] = B[1,2]) e (B[1,1] = "X")) ou ((B[2,3] = B[3,3]) e (B[2,3] = "X")) ou ((B[2,2] = B[3,1]) e (B[2,2] = "X"))) e (B[1,3] <> "X") e (B[1,3] <> "O") então
                                       B[1,3] <- "O"
                                    senão
                                       se (((B[1,1] = B[2,1]) e (B[1,1] = "X")) ou ((B[3,2] = B[3,3]) e (B[3,2] = "X")) ou ((B[2,2] = B[1,3]) e (B[2,2] = "X"))) e (B[3,1] <> "X") e (B[3,1] <> "O") então
                                          B[3,1] <- "O"
                                       senão
                                          se (((B[1,1] = B[2,2]) e (B[1,1] = "X")) ou ((B[3,1] = B[3,2]) e (B[3,1] = "X")) ou ((B[1,3] = B[2,3]) e (B[1,3] = "X"))) e (B[3,3] <> "X") e (B[3,3] <> "O") então
                                             B[3,3] <- "O"
                                          senão
                                             se (((B[1,1] = B[1,3]) e (B[1,1] = "X")) ou ((B[2,2] = B[3,2]) e (B[2,2] = "X"))) e (B[1,2] <> "X") e (B[1,2] <> "O") então
                                                B[1,2] <- "O"
                                             senão
                                                se (((B[3,1] = B[3,3]) e (B[3,1] = "X")) ou ((B[1,2] = B[2,2]) e (B[1,2] = "X"))) e (B[3,2] <> "X") e (B[3,2] <> "O") então
                                                   B[3,2] <- "O"
                                                senão
                                                   se (((B[1,1] = B[3,1]) e (B[1,1] = "X")) ou ((B[2,2] = B[2,3]) e (B[2,2] = "X"))) e (B[2,1] <> "X") e (B[2,1] <> "O") então
                                                      B[2,1] <- "O"
                                                   senão
                                                      se (((B[1,3] = B[3,3]) e (B[1,3] = "X")) ou ((B[2,1] = B[2,2]) e (B[2,1] = "X"))) e (B[2,3] <> "X") e (B[2,3] <> "O") então
                                                         B[2,3] <- "O"
                                                      senão
                                                         repita
                                                            para i de 1 até 3 faça
                                                               para j de 1 até 3 faça
                                                                  se (A[i,j] = numpcarac(randi(8) + 1)) e (B[i,j] <> "X") e (B[i,j] <> "O") então
                                                                     B[i,j] <- "O"
                                                                     sair <- Verdadeiro
                                                                     interrompa
                                                                  fimse
                                                               fimpara
                                                               se (sair) então
                                                                  interrompa
                                                               fimse
                                                            fimpara
                                                         até (sair = Verdadeiro)
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
   se (v % 2 = 0) então
      letra <- "X"
   senão
      letra <- "O"
   fimse
   para i de 1 até 3 faça
      para j de 1 até 3 faça
         se (A[i,j] = numpcarac(s)) e (B[i,j] <> "X") e (B[i,j] <> "O") então
            B[i,j] <- letra
            x <- x + 1
            XO <- XO + 1
            se (validar() = Falso) e (x <= 8) e (op = 2) então
               bot()
            fimse
            sair <- Verdadeiro
            interrompa
         fimse
      fimpara
      se (sair) então
         interrompa
      fimse
   fimpara
   painel_jogo()
fimprocedimento

função validar(): logico
inicio
   se (x >= 5) então
      se (B[1,1] = B[1,2]) e (B[1,2] = B[1,3]) então
         win <- B[1,1]
         retorne Verdadeiro
      senão
         se (B[2,1] = B[2,2]) e (B[2,2] = B[2,3]) então
            win <- B[2,1]
            retorne Verdadeiro
         senão
            se (B[3,1] = B[3,2]) e (B[3,2] = B[3,3]) então
               win <- B[3,1]
               retorne Verdadeiro
            senão
               se (B[1,1] = B[2,1]) e (B[2,1] = B[3,1]) então
                  win <- B[1,1]
                  retorne Verdadeiro
               senão
                  se (B[1,2] = B[2,2]) e (B[2,2] = B[3,2]) então
                     win <- B[1,2]
                     retorne Verdadeiro
                  senão
                     se (B[1,3] = B[2,3]) e (B[2,3] = B[3,3]) então
                        win <- B[1,3]
                        retorne Verdadeiro
                     senão
                        se (B[1,1] = B[2,2]) e (B[2,2] = B[3,3]) então
                           win <- B[1,1]
                           retorne Verdadeiro
                        senão
                           se (B[3,1] = B[2,2]) e (B[2,2] = B[1,3]) então
                              win <- B[3,1]
                              retorne Verdadeiro
                           senão
                              retorne Falso
                           fimse
                        fimse
                     fimse
                  fimse
               fimse
            fimse
         fimse
      fimse
   senão
      retorne Falso
   fimse
fimfunção

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
         escreva(" Opção >>> ")
         leia(op)
         limpatela
      até (op = 1) ou (op = 2)
      posicoes()
      repita
         se (XO % 2 = 0) então
            escreva(" Posição de [X]: ")
         senão
            escreva(" Posição de [O]: ")
         fimse
         leia(usr)
         limpatela
         jogo(usr, XO)
      até (validar() = Verdadeiro) ou (x = 9)
      escreval("      Fim de jogo      ")
      escreval("-----------------------")
      escreval()
      se (win = "") então
         escreval("":8, "Empate")
         emp <- emp + 1
      senão
         escreval("":7, win + " Ganhou!")
         se (win = "X") então
            win_x <- win_x + 1
         senão
            win_o <- win_o + 1
         fimse
      fimse
      escreval()
      escreval(" Número de jogadas:", x)
      escreval("=======================")
      escreva(" Parar? [s/n] ")
      leia(parar)
      parar <- minusc(parar)
      limpatela
   até (parar = "s") ou (parar = "si") ou (parar = "sim")
   escreval(" Vitórias de X:", win_x)
   escreval(" Vitórias de O:", win_o)
   escreval(" Empates:", emp)
fimalgoritmo