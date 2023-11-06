algoritmo "Números de 0 a 10"
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
   para i <- 1 até v faça
      escreva(i, "º número: ")
      leia(num)
      se((num <= 10)e(num >= 0))então
         total <- total + 1
      fimse
      se(num%2 = 1)então
         simpar <- simpar + num
      fimse
   fimpara
   escreval
   escreval("Foram digitados", total, " números entre 0 a 10")
   escreval("A soma dos impares é de: ", simpar)

fimalgoritmo