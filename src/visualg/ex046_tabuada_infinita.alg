algoritmo "Tabuada Infinita"
var
   i : inteiro
   j, mult : real
   r : caractere
inicio

   repita
      escreva("Digite um n�mero: ")
      leia(j)        s
      para i <- 1 at� 10 fa�a
         mult <- i * j
         escreval(i, " x", j, " =", mult)
      fimpara
      escreval
      escreva("Deseja parar? ")
      leia(r)
      limpatela
   at�((r = "s")ou(r = "S"))

fimalgoritmo