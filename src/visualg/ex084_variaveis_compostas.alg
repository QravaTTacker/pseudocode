algoritmo "Vari�veis Compostas"
var
   n: vetor[1..7] de inteiro
   i, par, impar : inteiro
inicio
   par <- 0
   impar <- 0
   para i <- 1 at� 7 fa�a
      escreva("Digite o ", i, "� valor: ")
      leia(n[i])
      se (n[i] % 2 = 0) ent�o
         par <- par + 1
      sen�o
         impar <- impar + 1
      fimse
   fimpara
   escreval
   escreval("N�meros impares:", impar)
   escreval("N�meros pares:", par)
fimalgoritmo