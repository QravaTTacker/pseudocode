algoritmo "ASCII CODE"
var
   a : vetor[0..255] de inteiro
   b : vetor[0..255] de caractere
   i : inteiro
   img : vetor[0..5] de caractere

procedimento borda()
inicio
   para i := 1 at� 155 fa�a
      escreva("=")
   fimpara
   escreval()
fimprocedimento

inicio

   para i de 0 at� 255 fa�a
      a[i] <- i
      se carac(a[i]) = " " ent�o
         b[i] <- "\?"
      sen�o
         b[i] <- " " + carac(a[i])
      fimse
   fimpara
   borda()
   para i de 0 at� 255 fa�a
      escreva(" ||  ASCII code", a[i]:4, " caractere: ", b[i], "  ||  ")
      se ((i+1)%4 = 0) ent�o
         escreval()
      fimse
   fimpara
   borda()
   img[0] <- "                  oo o      "
   img[1] <- "                 oo o o o   "
   img[2] <- "   O  /�         \| o oo    "
   img[3] <- "  /|\/            \\||/     "
   img[4] <- "  / \              |||      "
   img[5] <- "-------------------|||------"

   escreval()
   para i de 0 at� 5 fa�a
      escreval(img[i])
   fimpara

fimalgoritmo