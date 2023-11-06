algoritmo "Dissecando Matrizes"
var
   i, j, m, n, m2, n2 : inteiro //Ordem da matriz
   aux, valor, det, dp, ds : inteiro //Outros dados
   A, B, C : vetor[1..50, 1..50] de inteiro //Matrizes
   op, op2, op3 : inteiro //Opções
   resp : caractere //Continuar
   //////////////////////////////////////////////////////////////////////////
procedimento erro(x : inteiro)
inicio
   limpatela
   painel(1)
   escreval()
   escolha(x)
   caso 1
      escreval(" Erro: Ordem inválida, tente novamente!")
   caso 2
      escreval(" Erro: Opção inválida, tente novamente!")
   caso 3
      escreval(" Erro: Valor inválido, tente novamente!")
   fimescolha
   escreval()
   msg(40, 1)
fimprocedimento
/////////////////////////////////////////////////////////////////////////////
procedimento msg(x, y : inteiro)
inicio
   escolha(y)
   caso 1
      para i de 1 até abs(x) faça
         escreva("=")
      fimpara
      escreval()
   caso 2
      para i de 1 até abs(x) faça
         escreva("-")
      fimpara
      escreval()
   caso 3
      escreva("    ")
      para i de 1 até abs(x) faça
         escreva(" + ")
      fimpara
      escreval()
   caso 4
      para i de 1 até abs(x) faça
         escreva(" ")
      fimpara
   caso 5
      escreva("    ")
      para i de 1 até abs(x) faça
         escreva(" - ")
      fimpara
      escreval()
   fimescolha
fimprocedimento
/////////////////////////////////////////////////////////////////////////////
procedimento painel(x : inteiro)
inicio
   escolha(x)
   caso 1
      msg(40, 1)
      escreval(" ":7, "Matriz Nula............[1]")
      escreval(" ":7, "Matriz Identidade......[2]")
      escreval(" ":7, "Matriz Quadrada........[3]")
      escreval(" ":7, "Triangular Superior....[4]")
      escreval(" ":7, "Triangular Inferior....[5]")
      escreval(" ":7, "Diagonal Principal.....[6]")
      escreval(" ":7, "Diagonal Secundária....[7]")
      escreval(" ":7, "Matriz Retangular......[8]")
      escreval(" ":7, "Adição de Matrizes.....[9]")
      escreval(" ":7, "Subtração de Matrizes.[10]")
      escreval(" ":7, "Produto de Matrizes...[11]")
      escreval(" ":7, "Determinante..........[12]")
      escreval(" ":7, "Parar Aplicação.......[13]")
      msg(40, 1)
   caso 2
      msg(40, 2)
      escreval(" Inserir Valores......[1]")
      escreval(" Valores Aleatórios...[2]")
      escreval(" Valores Escalares....[3]")
      escreval(" Produto..............[4]")
      msg(40, 2)
   caso 3
      msg(40, 2)
      escreval(" Inserir Valor......[1]")
      escreval(" Valor Aleatório....[2]")
      msg(40, 2)
   fimescolha
fimprocedimento
/////////////////////////////////////////////////////////////////////////////
inicio
   timer 0
   repita
      n <- 0
      m <- 0
      painel(1)
      repita
         escreval(" Opção:")
         escreva(" ":16, ">>> ")
         leia(op)
         escreval()
         msg(40, 1)
         escolha(op)
            /////////////////////////////////////////////////////////////////
         caso 1
            repita
               escreval(" ":14, " Matriz Nula ")
               msg(40, 1)
               escreva(" Ordem: ")
               leia(m)
               se (m > 0) então
                  msg(2*m+7, 2)
                  escreval()
                  para i de 1 até m faça
                     escreva("   ")
                     para j de 1 até m faça
                        escreva(0)
                     fimpara
                     escreval()
                  fimpara
                  escreval()
                  msg(2*m+7, 2)
               senão
                  erro(1)
               fimse
            até (m > 0)
            /////////////////////////////////////////////////////////////////
         caso 2
            repita
               escreval(" ":11, " Matriz Identidade ")
               msg(40, 1)
               escreva(" Ordem: ")
               leia(m)
               se (m > 0) então
                  msg(2*m+7, 2)
                  escreval()
                  para i de 1 até m faça
                     escreva("   ")
                     para j de 1 até m faça
                        se (i = j) então
                           escreva(1)
                        senão
                           escreva(0)
                        fimse
                     fimpara
                     escreval()
                  fimpara
                  escreval()
                  msg(2*m+7, 2)
               senão
                  erro(1)
               fimse
            até (m > 0)
            /////////////////////////////////////////////////////////////////
         caso 3
            repita
               escreval(" ":12, " Matriz Quadrada ")
               msg(40, 1)
               escreva(" Ordem (1 a 50): ")
               leia(m)
               se ((m <= 50) e (m >= 1)) então
                  repita
                     painel(3)
                     escreva(" Opção: ")
                     leia(op2)
                     escolha(op2)
                     caso 1
                        msg(25, 2)
                        para i de 1 até m faça
                           para j de 1 até m faça
                              escreva(" Elemento ", i:2, " x", j:2, " -> ")
                              leia(A[i,j])
                           fimpara
                        fimpara
                     caso 2
                        para i de 1 até m faça
                           para j de 1 até m faça
                              A[i,j] <- randi(100)
                           fimpara
                        fimpara
                     outrocaso
                        erro(2)
                        escreval(" ":12, " Matriz Quadrada ")
                        msg(40, 1)
                        escreval()
                        escreval(" Ordem (1 a 50): ", m)
                        escreval()
                     fimescolha
                  até ((op2 = 1) ou (op2 = 2))
                  msg(3*m+7, 2)
                  escreval()
                  para i de 1 até m faça
                     escreva("   ")
                     para j de 1 até m faça
                        escreva(" ", A[i,j]:2)
                     fimpara
                     escreval()
                  fimpara
                  escreval()
                  msg(3*m+7, 2)
               senão
                  erro(1)
               fimse
            até ((m <= 50) e (m >= 1))
            /////////////////////////////////////////////////////////////////
         caso 4
            repita
               escreval(" ":9, " Triangular Superior ")
               msg(40, 1)
               escreva(" Ordem (2 a 50): ")
               leia(m)
               se ((m <= 50) e (m >= 2)) então
                  repita
                     painel(3)
                     escreva(" Opção: ")
                     leia(op2)
                     escolha(op2)
                     caso 1
                        msg(25, 2)
                        para i de 1 até m faça
                           para j de m até i+1 passo -1 faça
                              escreva(" Elemento ", i:2, " x", j:2, " -> ")
                              leia(A[i,j])
                           fimpara
                        fimpara
                     caso 2
                        para i de 1 até m faça
                           para j de m até i+1 passo -1 faça
                              A[i,j] <- randi(99) + 1
                           fimpara
                        fimpara
                     outrocaso
                        erro(2)
                        escreval(" ":9, " Triangular Superior ")
                        msg(40, 1)
                        escreval()
                        escreval(" Ordem (2 a 50): ", m)
                        escreval()
                     fimescolha
                  até ((op2 = 1) ou (op2 = 2))
                  msg(3*m+6, 2)
                  escreval()
                  para i de 1 até m faça
                     escreva("  ")
                     para j de 1 até m faça
                        se (j > i) então
                           escreva(" ", A[i,j]:2)
                        senão
                           escreva("  0")
                        fimse
                     fimpara
                     escreval()
                  fimpara
                  escreval()
                  msg(3*m+6, 2)
               senão
                  erro(1)
               fimse
            até ((m <= 50) e (m >= 2))
            /////////////////////////////////////////////////////////////////
         caso 5
            repita
               escreval(" ":9, " Triangular Inferior ")
               msg(40, 1)
               escreva(" Ordem (2 a 50): ")
               leia(m)
               se ((m <= 50) e (m >= 2)) então
                  repita
                     painel(3)
                     escreva(" Opção: ")
                     leia(op2)
                     escolha(op2)
                     caso 1
                        msg(25, 2)
                        para i de 1 até m faça
                           para j de 1 até i-1 faça
                              escreva(" Elemento ", i:2, " x", j:2, " -> ")
                              leia(A[i,j])
                           fimpara
                        fimpara
                     caso 2
                        para i de 1 até m faça
                           para j de 1 até i-1 faça
                              A[i,j] <- randi(99) + 1
                           fimpara
                        fimpara
                     outrocaso
                        erro(2)
                        escreval(" ":9, " Triangular Inferior ")
                        msg(40, 1)
                        escreval()
                        escreval(" Ordem (2 a 50): ", m)
                        escreval()
                     fimescolha
                  até ((op2 = 1) ou (op2 = 2))
                  msg(3*m+6, 2)
                  escreval()
                  para i de 1 até m faça
                     escreva("  ")
                     para j de 1 até m faça
                        se (j < i) então
                           escreva(" ", A[i,j]:2)
                        senão
                           escreva("  0")
                        fimse
                     fimpara
                     escreval()
                  fimpara
                  escreval()
                  msg(3*m+6, 2)
               senão
                  erro(1)
               fimse
            até ((m <= 50) e (m >= 2))
            /////////////////////////////////////////////////////////////////
         caso 6
            repita
               escreval(" ":10, " Diagonal Principal ")
               msg(40, 1)
               escreva(" Ordem (1 a 50): ")
               leia(m)
               se ((m <= 50) e (m >= 1)) então
                  repita
                     painel(2)
                     escreva(" Opção: ")
                     leia(op2)
                     escolha(op2)
                     caso 1
                        msg(25, 2)
                        para i de 1 até m faça
                           para j de 1 até i faça
                              se (j = i) então
                                 escreva(" Elemento ", i:2, " x", j:2, " -> ")
                                 leia(A[i,j])
                              fimse
                           fimpara
                        fimpara
                     caso 2
                        para i de 1 até m faça
                           para j de 1 até i faça
                              se (j = i) então
                                 A[i,j] <- randi(100)
                              fimse
                           fimpara
                        fimpara
                     caso 3
                        repita
                           painel(3)
                           escreva(" Opção: ")
                           leia(op3)
                           escolha(op3)
                           caso 1
                              msg(25, 2)
                              escreva(" Valor: ")
                              leia(valor)
                              para i de 1 até m faça
                                 para j de 1 até i faça
                                    se (j = i) então
                                       A[i,j] <- valor
                                    fimse
                                 fimpara
                              fimpara
                           caso 2
                              aux <- randi(100)
                              para i de 1 até m faça
                                 para j de 1 até i faça
                                    se (j = i) então
                                       A[i,j] <- aux
                                    fimse
                                 fimpara
                              fimpara
                           outrocaso
                              erro(2)
                              escreval(" ":10, " Diagonal Principal ")
                              msg(40, 1)
                              escreval()
                              escreval(" Ordem (1 a 50): ", m)
                              escreval()
                              painel(2)
                              escreval()
                              escreva(" Opção: ", op2)
                              escreval()
                              escreval()
                           fimescolha
                        até ((op3 = 1) ou (op3 = 2))
                     caso 4
                        msg(25, 2)
                        escreva(" Valor: ")
                        leia(valor)
                        para i de 1 até m faça
                           para j de 1 até i faça
                              se (j = i) então
                                 A[i,j] <- valor * i
                              fimse
                           fimpara
                        fimpara
                     outrocaso
                        erro(2)
                        escreval(" ":10, " Diagonal Principal ")
                        msg(40, 1)
                        escreval()
                        escreval(" Ordem (1 a 50): ", m)
                        escreval()
                     fimescolha
                  até ((op2 = 1) ou (op2 = 2) ou (op2 = 3) ou (op2 = 4))
                  msg(3*m+7, 2)
                  escreval()
                  para i de 1 até m faça
                     escreva("   ")
                     para j de 1 até m faça
                        se (j = i) então
                           escreva(" ", A[i,j]:2)
                        senão
                           escreva("  0")
                        fimse
                     fimpara
                     escreval()
                  fimpara
                  escreval()
                  msg(3*m+7, 2)
               senão
                  erro(1)
               fimse
            até ((m <= 50) e (m >= 1))
            /////////////////////////////////////////////////////////////////
         caso 7
            repita
               escreval(" ":10, " Diagonal Secundária ")
               msg(40, 1)
               escreva(" Ordem (1 a 50): ")
               leia(m)
               se ((m <= 50) e (m >= 1)) então
                  repita
                     painel(2)
                     escreva(" Opção: ")
                     leia(op2)
                     escolha(op2)
                     caso 1
                        msg(25, 2)
                        para i de 1 até m faça
                           para j de 1 até m faça
                              se (j + i = m + 1) então
                                 escreva(" Elemento ", i:2, " x", j:2, " -> ")
                                 leia(A[i,j])
                              fimse
                           fimpara
                        fimpara
                     caso 2
                        para i de 1 até m faça
                           para j de 1 até m faça
                              se (j + i = m + 1) então
                                 A[i,j] <- randi(100)
                              fimse
                           fimpara
                        fimpara
                     caso 3
                        repita
                           painel(3)
                           escreva(" Opção: ")
                           leia(op3)
                           escolha(op3)
                           caso 1
                              msg(25, 2)
                              escreva(" Valor: ")
                              leia(valor)
                              para i de 1 até m faça
                                 para j de 1 até m faça
                                    se (j + i = m + 1) então
                                       A[i,j] <- valor
                                    fimse
                                 fimpara
                              fimpara
                           caso 2
                              aux <- randi(100)
                              para i de 1 até m faça
                                 para j de 1 até m faça
                                    se (j + i = m + 1) então
                                       A[i,j] <- aux
                                    fimse
                                 fimpara
                              fimpara
                           outrocaso
                              erro(2)
                              escreval(" ":10, " Diagonal Secundária ")
                              msg(40, 1)
                              escreval()
                              escreval(" Ordem (1 a 50): ", m)
                              escreval()
                              painel(2)
                              escreval()
                              escreva(" Opção: ", op2)
                              escreval()
                              escreval()
                           fimescolha
                        até ((op3 = 1) ou (op3 = 2))
                     caso 4
                        msg(25, 2)
                        escreva(" Valor: ")
                        leia(valor)
                        para i de 1 até m faça
                           para j de 1 até m faça
                              se (j + i = m + 1) então
                                 A[i,j] <- valor * i
                              fimse
                           fimpara
                        fimpara
                     outrocaso
                        erro(2)
                        escreval(" ":10, " Diagonal Secundária ")
                        msg(40, 1)
                        escreval()
                        escreval(" Ordem (1 a 50): ", m)
                        escreval()
                     fimescolha
                  até ((op2 = 1) ou (op2 = 2) ou (op2 = 3) ou (op2 = 4))
                  msg(3*m+7, 2)
                  escreval()
                  para i de 1 até m faça
                     escreva("   ")
                     para j de 1 até m faça
                        se (j + i = m + 1) então
                           escreva(" ", A[i,j]:2)
                        senão
                           escreva("  0")
                        fimse
                     fimpara
                     escreval()
                  fimpara
                  escreval()
                  msg(3*m+7, 2)
               senão
                  erro(1)
               fimse
            até ((m <= 50) e (m >= 1))
            /////////////////////////////////////////////////////////////////
         caso 8
            repita
               escreval(" ":11, " Matriz Retangular ")
               msg(40, 1)
               escreva(" Linhas (1 a 50): ")
               leia(m)
               se não((m <= 50) e (m >= 1)) então
                  erro(3)
               fimse
            até ((m <= 50) e (m >= 1))
            repita
               msg(25, 2)
               escreva(" Colunas (1 a 50): ")
               leia(n)
               se não((n <= 50) e (n >= 1)) então
                  erro(3)
                  escreval(" ":11, " Matriz Retangular ")
                  msg(40, 1)
                  escreval(" Linhas (1 a 50):", m)
               fimse
            até ((n <= 50) e (n >= 1))
            repita
               painel(3)
               escreva(" Opção: ")
               leia(op2)
               escolha(op2)
               caso 1
                  msg(25, 2)
                  para i de 1 até m faça
                     para j de 1 até n faça
                        escreva(" Elemento ", i:2, " x", j:2, " -> ")
                        leia(A[i,j])
                     fimpara
                  fimpara
               caso 2
                  para i de 1 até m faça
                     para j de 1 até n faça
                        A[i,j] <- randi(100)
                     fimpara
                  fimpara
               outrocaso
                  erro(2)
                  escreval(" ":11, " Matriz Retangular ")
                  msg(40, 1)
                  escreval(" Linhas (1 a 50):", m)
                  msg(25, 2)
                  escreval(" Colunas (1 a 50):", n)
               fimescolha
            até ((op2 = 1) ou (op2 = 2))
            msg(3*n+7, 2)
            escreval()
            para i de 1 até m faça
               escreva("   ")
               para j de 1 até n faça
                  escreva(" ", A[i,j]:2)
               fimpara
               escreval()
            fimpara
            escreval()
            msg(3*n+7, 2)
            /////////////////////////////////////////////////////////////////
         caso 9
            escreval(" ":10, " Adição de Matrizes ")
            msg(40, 1)
            repita
               escreval(" ":7, " Matriz A ")
               msg(25, 2)
               escreva(" Linhas (1 a 50): ")
               leia(m)
               se não((m <= 50) e (m >= 1)) então
                  erro(3)
                  escreval(" ":10, " Adição de Matrizes ")
                  msg(40, 1)
               fimse
            até ((m <= 50) e (m >= 1))
            repita
               msg(25, 2)
               escreva(" Colunas (1 a 50): ")
               leia(n)
               se não((n <= 50) e (n >= 1)) então
                  erro(3)
                  escreval(" ":10, " Adição de Matrizes ")
                  msg(40, 1)
                  escreval(" ":7, " Matriz A ")
                  msg(25, 2)
                  escreval(" Linhas (1 a 50):", m)
               fimse
            até ((n <= 50) e (n >= 1))
            repita
               msg(30, 1)
               escreval(" ":7, " Matriz B ")
               msg(25, 2)
               escreva(" Linhas (1 a 50): ")
               leia(m2)
               se não((m2 <= 50) e (m2 >= 1)) então
                  erro(3)
                  escreval(" ":10, " Adição de Matrizes ")
                  msg(40, 1)
                  escreval(" ":7, " Matriz A ")
                  msg(25, 2)
                  escreval(" Linhas (1 a 50):", m)
                  msg(25, 2)
                  escreval(" Colunas (1 a 50):", n)
               fimse
            até ((m2 <= 50) e (m2 >= 1))
            repita
               msg(25, 2)
               escreva(" Colunas (1 a 50): ")
               leia(n2)
               se não((n2 <= 50) e (n2 >= 1)) então
                  erro(3)
                  escreval(" ":10, " Adição de Matrizes ")
                  msg(40, 1)
                  escreval(" ":7, " Matriz A ")
                  msg(25, 2)
                  escreval(" Linhas (1 a 50):", m)
                  msg(25, 2)
                  escreval(" Colunas (1 a 50):", n)
                  msg(30, 1)
                  escreval(" ":7, " Matriz B ")
                  msg(25, 2)
                  escreval(" Linhas (1 a 50):", m2)
               fimse
            até ((n2 <= 50) e (n2 >= 1))
            se ((m = m2) e (n = n2)) então
               limpatela
               painel(1)
               repita
                  escreval(" ":10, " Adição de Matrizes ")
                  msg(40, 1)
                  escreval(" ":13, " A + B (", numpcarac(m), "x", numpcarac(n), ")")
                  msg(40, 1)
                  painel(3)
                  escreva(" Opção: ")
                  leia(op2)
                  escolha(op2)
                  caso 1
                     escreval("------------------------- Matriz < A >")
                     para i de 1 até m faça
                        para j de 1 até n faça
                           escreva(" Elemento ", i:2, " x", j:2, " -> ")
                           leia(A[i,j])
                        fimpara
                     fimpara
                     escreval("------------------------- Matriz < B >")
                     para i de 1 até m faça
                        para j de 1 até n faça
                           escreva(" Elemento ", i:2, " x", j:2, " -> ")
                           leia(B[i,j])
                        fimpara
                     fimpara
                  caso 2
                     para i de 1 até m faça
                        para j de 1 até n faça
                           A[i,j] <- randi(10)
                        fimpara
                     fimpara
                     para i de 1 até m2 faça
                        para j de 1 até n2 faça
                           B[i,j] <- randi(10)
                        fimpara
                     fimpara
                  outrocaso
                     erro(2)
                  fimescolha
               até ((op2 = 1) ou (op2 = 2))
               msg(3*n+8, 1)
               escreval()
               para i de 1 até m faça
                  escreva("   ")
                  para j de 1 até n faça
                     escreva(" ", A[i,j]:2)
                  fimpara
                  escreval()
               fimpara
               escreval()
               msg(n, 3)
               escreval()
               para i de 1 até m faça
                  escreva("   ")
                  para j de 1 até n faça
                     escreva(" ", B[i,j]:2)
                  fimpara
                  escreval()
               fimpara
               escreval()
               msg(3*n+8, 1)
               escreval()
               para i de 1 até m faça
                  escreva("   ")
                  para j de 1 até n faça
                     escreva(" ", A[i,j]+B[i,j]:2)
                  fimpara
                  escreval()
               fimpara
               escreval()
               msg(3*n+8, 1)
            senão
               msg(40, 1)
               escreval(" Impossível somar com ordens diferentes")
               msg(40, 1)
            fimse
            /////////////////////////////////////////////////////////////////
         caso 10
            escreval(" ":9, " Subtração de Matrizes ")
            msg(40, 1)
            repita
               escreval(" ":7, " Matriz A ")
               msg(25, 2)
               escreva(" Linhas (1 a 50): ")
               leia(m)
               se não((m <= 50) e (m >= 1)) então
                  erro(3)
                  escreval(" ":9, " Subtração de Matrizes ")
                  msg(40, 1)
               fimse
            até ((m <= 50) e (m >= 1))
            repita
               msg(25, 2)
               escreva(" Colunas (1 a 50): ")
               leia(n)
               se não((n <= 50) e (n >= 1)) então
                  erro(3)
                  escreval(" ":9, " Subtração de Matrizes ")
                  msg(40, 1)
                  escreval(" ":7, " Matriz A ")
                  msg(25, 2)
                  escreval(" Linhas (1 a 50):", m)
               fimse
            até ((n <= 50) e (n >= 1))
            repita
               msg(30, 1)
               escreval(" ":7, " Matriz B ")
               msg(25, 2)
               escreva(" Linhas (1 a 50): ")
               leia(m2)
               se não((m2 <= 50) e (m2 >= 1)) então
                  erro(3)
                  escreval(" ":9, " Subtração de Matrizes ")
                  msg(40, 1)
                  escreval(" ":7, " Matriz A ")
                  msg(25, 2)
                  escreval(" Linhas (1 a 50):", m)
                  msg(25, 2)
                  escreval(" Colunas (1 a 50):", n)
               fimse
            até ((m2 <= 50) e (m2 >= 1))
            repita
               msg(25, 2)
               escreva(" Colunas (1 a 50): ")
               leia(n2)
               se não((n2 <= 50) e (n2 >= 1)) então
                  erro(3)
                  escreval(" ":9, " Subtração de Matrizes ")
                  msg(40, 1)
                  escreval(" ":7, " Matriz A ")
                  msg(25, 2)
                  escreval(" Linhas (1 a 50):", m)
                  msg(25, 2)
                  escreval(" Colunas (1 a 50):", n)
                  msg(30, 1)
                  escreval(" ":7, " Matriz B ")
                  msg(25, 2)
                  escreval(" Linhas (1 a 50):", m2)
               fimse
            até ((n2 <= 50) e (n2 >= 1))
            se ((m = m2) e (n = n2)) então
               limpatela
               painel(1)
               repita
                  escreval(" ":9, " Subtração de Matrizes ")
                  msg(40, 1)
                  escreval(" ":13, " A - B (", numpcarac(m), "x", numpcarac(n), ")")
                  msg(40, 1)
                  painel(3)
                  escreva(" Opção: ")
                  leia(op2)
                  escolha(op2)
                  caso 1
                     escreval("------------------------- Matriz < A >")
                     para i de 1 até m faça
                        para j de 1 até n faça
                           escreva(" Elemento ", i:2, " x", j:2, " -> ")
                           leia(A[i,j])
                        fimpara
                     fimpara
                     escreval("------------------------- Matriz < B >")
                     para i de 1 até m faça
                        para j de 1 até n faça
                           escreva(" Elemento ", i:2, " x", j:2, " -> ")
                           leia(B[i,j])
                        fimpara
                     fimpara
                  caso 2
                     para i de 1 até m faça
                        para j de 1 até n faça
                           A[i,j] <- randi(10)
                        fimpara
                     fimpara
                     para i de 1 até m2 faça
                        para j de 1 até n2 faça
                           B[i,j] <- randi(10)
                        fimpara
                     fimpara
                  outrocaso
                     erro(2)
                  fimescolha
               até ((op2 = 1) ou (op2 = 2))
               msg(3*n+8, 1)
               escreval()
               para i de 1 até m faça
                  escreva("   ")
                  para j de 1 até n faça
                     escreva(" ", A[i,j]:2)
                  fimpara
                  escreval()
               fimpara
               escreval()
               msg(n, 5)
               escreval()
               para i de 1 até m faça
                  escreva("   ")
                  para j de 1 até n faça
                     escreva(" ", B[i,j]:2)
                  fimpara
                  escreval()
               fimpara
               escreval()
               msg(3*n+8, 1)
               escreval()
               para i de 1 até m faça
                  escreva("   ")
                  para j de 1 até n faça
                     escreva(" ", A[i,j]-B[i,j]:2)
                  fimpara
                  escreval()
               fimpara
               escreval()
               msg(3*n+8, 1)
            senão
               msg(40, 1)
               escreval(" Impossível somar com ordens diferentes")
               msg(40, 1)
            fimse
            /////////////////////////////////////////////////////////////////
         caso 11
            escreval(" ":9, " Produto de Matrizes ")
            msg(40, 2)
            escreval(" ":16, " A x B ")
            msg(40, 1)
            repita
               escreval(" ":7, " Matriz A ")
               msg(25, 2)
               escreva(" Linhas (1 a 50): ")
               leia(m)
               se não((m <= 50) e (m >= 1)) então
                  erro(3)
                  escreval(" ":9, " Produto de Matrizes ")
                  msg(40, 2)
                  escreval(" ":16, " A x B ")
                  msg(40, 1)
               fimse
            até ((m <= 50) e (m >= 1))
            repita
               msg(25, 2)
               escreva(" Colunas (1 a 50): ")
               leia(n)
               se não((n <= 50) e (n >= 1)) então
                  erro(3)
                  escreval(" ":9, " Produto de Matrizes ")
                  msg(40, 2)
                  escreval(" ":16, " A x B ")
                  msg(40, 1)
                  escreval(" ":7, " Matriz A ")
                  msg(25, 2)
                  escreval(" Linhas (1 a 50):", m)
               fimse
            até ((n <= 50) e (n >= 1))
            repita
               msg(30, 1)
               escreval(" ":7, " Matriz B ")
               msg(25, 2)
               escreva(" Linhas (1 a 50): ")
               leia(m2)
               se não((m2 <= 50) e (m2 >= 1)) então
                  erro(3)
                  escreval(" ":9, " Produto de Matrizes ")
                  msg(40, 2)
                  escreval(" ":16, " A x B ")
                  msg(40, 1)
                  escreval(" ":7, " Matriz A ")
                  msg(25, 2)
                  escreval(" Linhas (1 a 50):", m)
                  msg(25, 2)
                  escreval(" Colunas (1 a 50):", n)
               fimse
            até ((m2 <= 50) e (m2 >= 1))
            repita
               msg(25, 2)
               escreva(" Colunas (1 a 50): ")
               leia(n2)
               se não((n2 <= 50) e (n2 >= 1)) então
                  erro(3)
                  escreval(" ":9, " Produto de Matrizes ")
                  msg(40, 2)
                  escreval(" ":16, " A x B ")
                  msg(40, 1)
                  escreval(" ":7, " Matriz A ")
                  msg(25, 2)
                  escreval(" Linhas (1 a 50):", m)
                  msg(25, 2)
                  escreval(" Colunas (1 a 50):", n)
                  msg(30, 1)
                  escreval(" ":7, " Matriz B ")
                  msg(25, 2)
                  escreval(" Linhas (1 a 50):", m2)
               fimse
            até ((n2 <= 50) e (n2 >= 1))
            se (n = m2) então
               limpatela
               painel(1)
               repita
                  escreval(" ":9, " Produto de Matrizes ")
                  msg(40, 1)
                  escreval(" ":14, " A x B (", numpcarac(m), "x", numpcarac(n2), ")")
                  painel(3)
                  escreva(" Opção: ")
                  leia(op2)
                  escolha(op2)
                  caso 1
                     escreval("------------------------- Matriz < A >")
                     para i de 1 até m faça
                        para j de 1 até n faça
                           escreva(" Elemento ", i:2, " x", j:2, " -> ")
                           leia(A[i,j])
                        fimpara
                     fimpara
                     escreval("------------------------- Matriz < B >")
                     para i de 1 até m2 faça
                        para j de 1 até n2 faça
                           escreva(" Elemento ", i:2, " x", j:2, " -> ")
                           leia(B[i,j])
                        fimpara
                     fimpara
                  caso 2
                     para i de 1 até m faça
                        para j de 1 até n faça
                           A[i,j] <- randi(10)
                        fimpara
                     fimpara
                     para i de 1 até m2 faça
                        para j de 1 até n2 faça
                           B[i,j] <- randi(10)
                        fimpara
                     fimpara
                  outrocaso
                     erro(2)
                  fimescolha
               até ((op2 = 1) ou (op2 = 2))
               msg(3*n+7, 1)
               escreval()
               para i de 1 até m faça
                  escreva("   ")
                  para j de 1 até n faça
                     escreva(" ", A[i,j]:2)
                  fimpara
                  escreval()
               fimpara
               escreval()
               msg((3*n+5)/2, 4)
               escreva(" x ")
               escreval()
               escreval()
               para i de 1 até m2 faça
                  escreva("   ")
                  para j de 1 até n2 faça
                     escreva(" ", B[i,j]:2)
                  fimpara
                  escreval()
               fimpara
               escreval()
               para i de 1 até m faça
                  para j de 1 até n2 faça
                     C[i,j] <- 0
                  fimpara
               fimpara
               msg(3*n2+7, 1)
               /////////////////////////////////////////////////////////
               para i de 1 até m faça
                  para j de 1 até n2 faça
                     para aux de 1 até n faça
                        C[i,j] <- C[i,j] + (A[i,aux] * B[aux,j])
                     fimpara
                  fimpara
               fimpara
               /////////////////////////////////////////////////////////
               escreval(" Resultado: ")
               msg(4*n2+8, 1)
               escreval()
               para i de 1 até m faça
                  escreva("   ")
                  para j de 1 até n2 faça
                     escreva(C[i,j]:4)
                  fimpara
                  escreval()
               fimpara
               escreval()
               msg(4*n2+8, 1)
            senão
               msg(40, 1)
               escreval(" A COLUNA de A é diferente da LINHA de B")
               msg(40, 1)
            fimse
            /////////////////////////////////////////////////////////////////
         caso 12
            repita
               escreval(" ":13, " Determinante ")
               msg(40, 1)
               escreval(" Matriz 1x1..........................[1]")
               escreval(" Matriz 2x2..........................[2]")
               escreval(" Matriz 3x3..........................[3]")
               escreval(" Matriz 4x4..........................[4]")
               msg(40, 2)
               escreva(" Opção: ")
               leia(op2)
               se não ((op2 >= 1) e (op2 <= 4)) então
                  erro(2)
               fimse
            até ((op2 >= 1) e (op2 <= 4))
            limpatela
            painel(1)
            repita
               se (op2 = 1) então
                  escreval(" ":12, " Det Matriz 1x1 ")
               senão
                  se (op2 = 2) então
                     escreval(" ":12, " Det Matriz 2x2 ")
                  senão
                     se (op2 = 3) então
                        escreval(" ":12, " Det Matriz 3x3 ")
                     senão
                        se (op2 = 4) entao
                           escreval(" ":12, " Det Matriz 4x4 ")
                        fimse
                     fimse
                  fimse
               fimse
               painel(3)
               escreva(" Opção: ")
               leia(op3)
               se não((op3 = 1) ou (op3 = 2)) então
                  erro(2)
               fimse
            até ((op3 = 1) ou (op3 = 2))
            limpatela
            painel(1)
            escolha op3
            caso 1
               escolha op2
               caso 1
                  escreval(" ":12, " Det Matriz 1x1 ")
                  msg(40, 1)
                  escreva(" Elemento 1x1 -> ")
                  leia(A[1,1])
                  msg(25, 2)
                  escreval()
                  escreval(" Det(A) = |", A[1,1], " | -> ",  A[1,1])
                  escreval()
                  msg(40, 1)
               caso 2
                  escreval(" ":14, " Matriz 2x2 ")
                  msg(40, 1)
                  para i de 1 até 2 faça
                     para j de 1 até 2 faça
                        escreva(" Elemento ", i:2, " x", j:2, " -> ")
                        leia(A[i,j])
                     fimpara
                  fimpara
                  /////////////////////////////////////////
                  det <- A[1,1]*A[2,2] - A[2,1]*A[1,2]
                  /////////////////////////////////////////
                  msg(30, 2)
                  escreval()
                  escreva(" Det(A) = |")
                  para i de 1 até 2 faça
                     se (i > 1) então
                        escreva("          |")
                     fimse
                     para j de 1 até 2 faça
                        escreva(A[i,j]:3)
                     fimpara
                     se ((i = 2) e (j = 2)) então
                        escreval("  | ->", det)
                     senão
                        escreval("  |")
                     fimse
                  fimpara
                  escreval()
                  msg(40, 1)
               caso 3
                  escreval(" ":14, " Matriz 3x3 ")
                  msg(40, 1)
                  para i de 1 até 3 faça
                     para j de 1 até 3 faça
                        escreva(" Elemento ", i:2, " x", j:2, " -> ")
                        leia(A[i,j])
                     fimpara
                  fimpara
                  /////////////////////////////////////////
                  dp <- A[1,1]*A[2,2]*A[3,3] + A[1,2]*A[2,3]*A[3,1] + A[1,3]*A[2,1]*A[3,2]
                  ds <- A[1,3]*A[2,2]*A[3,1] + A[1,1]*A[2,3]*A[3,2] + A[1,2]*A[2,1]*A[3,3]
                  det <- dp - ds
                  /////////////////////////////////////////
                  msg(30, 2)
                  escreval()
                  escreva(" Det(A) = |")
                  para i de 1 até 3 faça
                     se (i > 1) então
                        escreva("          |")
                     fimse
                     para j de 1 até 3 faça
                        escreva(A[i,j]:3)
                     fimpara
                     se ((i = 3) e (j = 3)) então
                        escreval("  | ->", det)
                     senão
                        escreval("  |")
                     fimse
                  fimpara
                  escreval()
                  msg(40, 1)
               caso 4
                  escreval(" ":14, " Matriz 4x4 ")
                  msg(40, 1)
                  para i de 1 até 4 faça
                     para j de 1 até 4 faça
                        escreva(" Elemento ", i:2, " x", j:2, " -> ")
                        leia(A[i,j])
                     fimpara
                  fimpara
                  /////////////////////////////////////////
                  dp <- A[1,1]*A[2,2]*A[3,3]*A[4,4] + A[1,1]*A[2,3]*A[3,4]*A[4,2]
                  dp <- dp + (A[1,1]*A[2,4]*A[3,2]*A[4,3] + A[1,2]*A[2,1]*A[3,4]*A[4,3])
                  dp <- dp + (A[1,2]*A[3,1]*A[2,3]*A[4,4] + A[1,2]*A[2,4]*A[3,3]*A[4,1])
                  dp <- dp + (A[1,3]*A[2,1]*A[3,2]*A[4,4] + A[1,3]*A[2,2]*A[3,4]*A[4,1])
                  dp <- dp + (A[1,3]*A[2,4]*A[3,1]*A[4,2] + A[1,4]*A[2,1]*A[3,3]*A[4,2])
                  dp <- dp + (A[1,4]*A[2,2]*A[3,1]*A[4,3] + A[1,4]*A[2,3]*A[3,2]*A[4,1])

                  ds <- A[1,1]*A[2,2]*A[3,4]*A[4,3] + A[1,1]*A[2,3]*A[3,2]*A[4,4]
                  ds <- ds + (A[1,1]*A[2,4]*A[3,3]*A[4,2] + A[1,2]*A[2,1]*A[3,3]*A[4,4])
                  ds <- ds + (A[1,2]*A[2,3]*A[3,4]*A[4,1] + A[1,2]*A[2,4]*A[3,1]*A[4,3])
                  ds <- ds + (A[1,3]*A[2,1]*A[3,4]*A[4,2] + A[1,3]*A[2,2]*A[3,1]*A[4,4])
                  ds <- ds + (A[1,3]*A[2,4]*A[3,2]*A[4,1] + A[1,4]*A[2,1]*A[3,2]*A[4,3])
                  ds <- ds + (A[1,4]*A[2,2]*A[3,3]*A[4,1] + A[1,4]*A[2,3]*A[3,1]*A[4,2])

                  det <- dp - ds
                  /////////////////////////////////////////
                  msg(30, 2)
                  escreval()
                  escreva(" Det(A) = |")
                  para i de 1 até 4 faça
                     se (i > 1) então
                        escreva("          |")
                     fimse
                     para j de 1 até 4 faça
                        escreva(A[i,j]:3)
                     fimpara
                     se ((i = 4) e (j = 4)) então
                        escreval("  | ->", det)
                     senão
                        escreval("  |")
                     fimse
                  fimpara
                  escreval()
                  msg(40, 1)
               fimescolha
            caso 2
               escolha op2
               caso 1
                  escreval(" ":12, " Det Matriz 1x1 ")
                  msg(40, 1)
                  A[1,1] <- randi(100)
                  escreval()
                  escreval(" Det(A) = |", A[1,1], " | -> ",  A[1,1])
                  escreval()
                  msg(40, 1)
               caso 2
                  escreval(" ":14, " Matriz 2x2 ")
                  msg(40, 1)
                  para i de 1 até 2 faça
                     para j de 1 até 2 faça
                        A[i,j] <- randi(20)
                     fimpara
                  fimpara
                  /////////////////////////////////////////
                  det <- A[1,1]*A[2,2] - A[2,1]*A[1,2]
                  /////////////////////////////////////////
                  escreval()
                  escreva(" Det(A) = |")
                  para i de 1 até 2 faça
                     se (i > 1) então
                        escreva("          |")
                     fimse
                     para j de 1 até 2 faça
                        escreva(A[i,j]:3)
                     fimpara
                     se ((i = 2) e (j = 2)) então
                        escreval("  | ->", det)
                     senão
                        escreval("  |")
                     fimse
                  fimpara
                  escreval()
                  msg(40, 1)
               caso 3
                  escreval(" ":14, " Matriz 3x3 ")
                  msg(40, 1)
                  para i de 1 até 3 faça
                     para j de 1 até 3 faça
                        A[i,j] <- randi(11)
                     fimpara
                  fimpara
                  /////////////////////////////////////////
                  dp <- A[1,1]*A[2,2]*A[3,3] + A[1,2]*A[2,3]*A[3,1] + A[1,3]*A[2,1]*A[3,2]
                  ds <- A[1,3]*A[2,2]*A[3,1] + A[1,1]*A[2,3]*A[3,2] + A[1,2]*A[2,1]*A[3,3]
                  det <- dp - ds
                  /////////////////////////////////////////
                  escreval()
                  escreva(" Det(A) = |")
                  para i de 1 até 3 faça
                     se (i > 1) então
                        escreva("          |")
                     fimse
                     para j de 1 até 3 faça
                        escreva(A[i,j]:3)
                     fimpara
                     se ((i = 3) e (j = 3)) então
                        escreval("  | ->", det)
                     senão
                        escreval("  |")
                     fimse
                  fimpara
                  escreval()
                  msg(40, 1)
               caso 4
                  escreval(" ":14, " Matriz 4x4 ")
                  msg(40, 1)
                  para i de 1 até 4 faça
                     para j de 1 até 4 faça
                        A[i,j] <- randi(11)
                     fimpara
                  fimpara
                  /////////////////////////////////////////
                  dp <- A[1,1]*A[2,2]*A[3,3]*A[4,4] + A[1,1]*A[2,3]*A[3,4]*A[4,2]
                  dp <- dp + (A[1,1]*A[2,4]*A[3,2]*A[4,3] + A[1,2]*A[2,1]*A[3,4]*A[4,3])
                  dp <- dp + (A[1,2]*A[3,1]*A[2,3]*A[4,4] + A[1,2]*A[2,4]*A[3,3]*A[4,1])
                  dp <- dp + (A[1,3]*A[2,1]*A[3,2]*A[4,4] + A[1,3]*A[2,2]*A[3,4]*A[4,1])
                  dp <- dp + (A[1,3]*A[2,4]*A[3,1]*A[4,2] + A[1,4]*A[2,1]*A[3,3]*A[4,2])
                  dp <- dp + (A[1,4]*A[2,2]*A[3,1]*A[4,3] + A[1,4]*A[2,3]*A[3,2]*A[4,1])

                  ds <- A[1,1]*A[2,2]*A[3,4]*A[4,3] + A[1,1]*A[2,3]*A[3,2]*A[4,4]
                  ds <- ds + (A[1,1]*A[2,4]*A[3,3]*A[4,2] + A[1,2]*A[2,1]*A[3,3]*A[4,4])
                  ds <- ds + (A[1,2]*A[2,3]*A[3,4]*A[4,1] + A[1,2]*A[2,4]*A[3,1]*A[4,3])
                  ds <- ds + (A[1,3]*A[2,1]*A[3,4]*A[4,2] + A[1,3]*A[2,2]*A[3,1]*A[4,4])
                  ds <- ds + (A[1,3]*A[2,4]*A[3,2]*A[4,1] + A[1,4]*A[2,1]*A[3,2]*A[4,3])
                  ds <- ds + (A[1,4]*A[2,2]*A[3,3]*A[4,1] + A[1,4]*A[2,3]*A[3,1]*A[4,2])

                  det <- dp - ds
                  /////////////////////////////////////////
                  escreval()
                  escreva(" Det(A) = |")
                  para i de 1 até 4 faça
                     se (i > 1) então
                        escreva("          |")
                     fimse
                     para j de 1 até 4 faça
                        escreva(A[i,j]:3)
                     fimpara
                     se ((i = 4) e (j = 4)) então
                        escreval("  | ->", det)
                     senão
                        escreval("  |")
                     fimse
                  fimpara
                  escreval()
                  msg(40, 1)
               fimescolha
            fimescolha
            /////////////////////////////////////////////////////////////////
         caso 13
            interrompa
         outrocaso
            limpatela
            painel(1)
            escreval(" ":11, " Opção Inválida :/ ")
            msg(40, 1)
         fimescolha
      até ((op <= 12) e (op >= 1))
      se (op <> 13) então
         escreva(" Para? ")
         leia(resp)
         limpatela
      fimse
   até ((op = 13) ou (minusc(resp) = "s") ou (minusc(resp) = "sim") ou (minusc(resp) = "si"))
   limpatela
fimalgoritmo