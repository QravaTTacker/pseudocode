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
      sen�o
         nome <- nome + "!"
         h <- 0
         para h de 0 at� compr(nome)-1 fa�a
            para k de 0 at� h fa�a
               para i de 0 at� h fa�a
                  x <- "  \  "
                  o <- "  /  "
                  aux <- ""
                  troca <- verdadeiro
                  para j de 0 ate i faca
                     se n�o(i % 2 <> 1) e (troca = verdadeiro) ent�o
                        aux <- x
                        x <- o
                        o <- aux
                        troca <- falso
                     fimse
                     se (i = 0+h) e (j = h-k) ent�o
                        vet[i, j] <- x //" " + carac(randi(40) + 41) + " "
                     sen�o
                        se (i = 0+h) e (j = 0+k) ent�o
                           vet[i, j] <- o
                        sen�o
                           se (i = j) ent�o
                              vet[i, j] <- "  " + copia(maiusc(nome), j+1, 1) + "  "
                           sen�o
                              vet[i, j] <- " --- "
                           fimse
                        fimse
                     fimse
                     escreva(vet[i, j])
                  fimpara
                  escreval()
               fimpara
               se (i%2 = 1) e (j = i) e (h = compr(nome) - 1) e (vet[(compr(nome)-1), (compr(nome)-1)] = "  /  ") ent�o
                  para i de 0 at� 500 fa�a
                     escreva(" ")
                  fimpara
               sen�o
                  se (i%2 = 0) e (j = i) e (h = compr(nome) - 1) e (vet[(compr(nome)-1), (compr(nome)-1)] = "  \  ") ent�o
                     para i de 0 at� 500 fa�a
                        escreva(" ")
                     fimpara
                  sen�o
                     para i de 0 at� 50 fa�a
                        escreva(" ")
                     fimpara
                  fimse
               fimse
               limpatela
            fimpara
         fimpara
      fimse
      escreval(" Sa�r? [s/n] ")
      escreva(" >>> ")
      leia(nome)
      nome <- minusc(nome)
      limpatela
      se (nome = "s") ou (nome = "si") ou (nome = "sim") entao
         interrompa
      fimse
   at� falso

fimalgoritmo