algoritmo "Variáveis Compostas"
var
   n: vetor[1..7] de inteiro
   i, par, impar : inteiro
inicio
   par <- 0
   impar <- 0
   para i <- 1 até 7 faça
      escreva("Digite o ", i, "º valor: ")
      leia(n[i])
      se (n[i] % 2 = 0) então
         par <- par + 1
      senão
         impar <- impar + 1
      fimse
   fimpara
   escreval
   escreval("Números impares:", impar)
   escreval("Números pares:", par)
fimalgoritmo