algoritmo "Tabuada Infinita"
var
   i : inteiro
   j, mult : real
   r : caractere
inicio

   repita
      escreva("Digite um número: ")
      leia(j)        s
      para i <- 1 até 10 faça
         mult <- i * j
         escreval(i, " x", j, " =", mult)
      fimpara
      escreval
      escreva("Deseja parar? ")
      leia(r)
      limpatela
   até((r = "s")ou(r = "S"))

fimalgoritmo