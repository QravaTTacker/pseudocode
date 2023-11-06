algoritmo "Pares de Uma Matriz"
var
   A : vetor[1..3, 1..3] de inteiro
   tot_par, tot_impar : vetor[1..9] de inteiro
   i, j, par, impar, cont : inteiro
inicio
   cont <- 0
   repita
      par <- 0
      impar <- 0
      i <- 1
      enquanto (i <= 3) faça
         j <- 1
         enquanto (j <= 3) faça
            A[i,j] <- randi(100)
            j <- j + 1
         fimenquanto
         i <- i + 1
      fimenquanto
      escreval("===============================")
      i <- 1
      enquanto (i <= 3) faça
         j <- 1
         enquanto (j <= 3) faça
            escreva(" ", A[i,j]:3)
            j <- j + 1
         fimenquanto
         escreval
         i <- i + 1
      fimenquanto
      escreval("===============================")
      para i <- 1 até 3 faça
         para j <- 1 até 3 faça
            se (A[i,j] % 2 = 0) então
               par <- par + 1
               tot_par[par] <- A[i,j]
            senão
               impar <- impar + 1
               tot_impar[impar] <- A[i,j]
            fimse
         fimpara
      fimpara
      escreva(" Pares: ")
      para i <- 1 até par faça
         escreva(tot_par[i], " ")
      fimpara
      escreval
      escreval("---------------")
      escreva(" Impar: ")
      para i <- 1 até impar faça
         escreva(tot_impar[i], " ")
      fimpara
      escreval
      escreval("===============================")
      cont <- cont + 1
      timer 500
      escreval(" Nº da matriz:", cont)
      timer 0
   até ((impar = 9) ou (par = 9))
   escreval(" Relação:", ((1/cont)*100):5:2, "%")
   escreval(" >>> 1/"+numpcarac(cont))
   escreval("===============================")
fimalgoritmo