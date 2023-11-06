algoritmo "Mudando Px e Py"
var
   vet : vetor[0..20, 0..20] de caractere
   i, j, k, h : inteiro
   x, o, aux, nome : caractere
   troca : logico
inicio

   repita
      escreva(" Digite algo: ")
      leia(nome)
      se (compr(nome) > 21) entao
         escreval(" Tente um nome mais curto :(")
      senão
         nome <- nome + "!"
         h <- 0
         para h de 0 até compr(nome)-1 faça
            para k de 0 até h faça
               para i de 0 até h faça
                  x <- "  \  "
                  o <- "  /  "
                  aux <- ""
                  troca <- verdadeiro
                  para j de 0 ate i faca
                     se não(i % 2 <> 1) e (troca = verdadeiro) então
                        aux <- x
                        x <- o
                        o <- aux
                        troca <- falso
                     fimse
                     se (i = 0+h) e (j = h-k) então
                        vet[i, j] <- x //" " + carac(randi(40) + 41) + " "
                     senão
                        se (i = 0+h) e (j = 0+k) então
                           vet[i, j] <- o
                        senão
                           se (i = j) então
                              vet[i, j] <- "  " + copia(maiusc(nome), j+1, 1) + "  "
                           senão
                              vet[i, j] <- " --- "
                           fimse
                        fimse
                     fimse
                     escreva(vet[i, j])
                  fimpara
                  escreval()
               fimpara
               se (i%2 = 1) e (j = i) e (h = compr(nome) - 1) e (vet[(compr(nome)-1), (compr(nome)-1)] = "  /  ") então
                  para i de 0 até 500 faça
                     escreva(" ")
                  fimpara
               senão
                  se (i%2 = 0) e (j = i) e (h = compr(nome) - 1) e (vet[(compr(nome)-1), (compr(nome)-1)] = "  \  ") então
                     para i de 0 até 500 faça
                        escreva(" ")
                     fimpara
                  senão
                     para i de 0 até 50 faça
                        escreva(" ")
                     fimpara
                  fimse
               fimse
               limpatela
            fimpara
         fimpara
      fimse
      escreval(" Saír? [s/n] ")
      escreva(" >>> ")
      leia(nome)
      nome <- minusc(nome)
      limpatela
      se (nome = "s") ou (nome = "si") ou (nome = "sim") entao
         interrompa
      fimse
   até falso

fimalgoritmo