algoritmo "N�meros de 0 a 10"
var
   i, v, num, total, simpar: inteiro
inicio

   total <- 0
   simpar <- 0
   v <- 0
   num <- 0
   escreva("Quantos valores deseja digitar? ")
   leia(v)
   escreval
   para i <- 1 at� v fa�a
      escreva(i, "� n�mero: ")
      leia(num)
      se((num <= 10)e(num >= 0))ent�o
         total <- total + 1
      fimse
      se(num%2 = 1)ent�o
         simpar <- simpar + num
      fimse
   fimpara
   escreval
   escreval("Foram digitados", total, " n�meros entre 0 a 10")
   escreval("A soma dos impares � de: ", simpar)

fimalgoritmo