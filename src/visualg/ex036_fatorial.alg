algoritmo "Fatorial"
var
   i, j, f : inteiro
   resp : caractere
inicio

   repita
      j <- 0
      f <- 1
      escreva("Digite um número inteiro: ")
      leia(j)
      i <- j
      repita
         f <- f * i
         i <- i - 1
      até(i < 1)
      escreval("O fatorial de", j, " é", f)
      escreval
      escreva("Deseja continuar? [s/n] ")
      leia(resp)
      limpatela
   até (resp = "n")

fimalgoritmo