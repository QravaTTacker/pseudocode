algoritmo "Fatorial"
var
   i, j, f : inteiro
   resp : caractere
inicio

   repita
      j <- 0
      f <- 1
      escreva("Digite um n�mero inteiro: ")
      leia(j)
      i <- j
      repita
         f <- f * i
         i <- i - 1
      at�(i < 1)
      escreval("O fatorial de", j, " �", f)
      escreval
      escreva("Deseja continuar? [s/n] ")
      leia(resp)
      limpatela
   at� (resp = "n")

fimalgoritmo