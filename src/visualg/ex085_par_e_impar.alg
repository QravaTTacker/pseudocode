algoritmo "Par e Impar"
var
   n: vetor[1..5] de inteiro
   cont, par, impar: inteiro
inicio
   par <- impar <- 0
   para cont <- 1 até 5 faça
      escreva(cont, "º valor: ")
      leia(n[cont])
      se (n[cont] % 2 = 0) então
         par <- par + 1
      senão
         impar <- impar + 1
      fimse
   fimpara
   escreval
   escreval(" Valores que são pares:", par, " no total...")
   se (par >= 1) então
      para cont <- 1 até 5 faça
         se (n[cont] % 2 = 0) então
            escreval(n[cont], " na", cont, "ª posição")
         fimse
      fimpara
   senão
      escreval(" Não há números pares :/")
   fimse
   escreval
   escreval(" Valores que são impares:", impar, " no total...")
   se (impar >= 1) então
      para cont <- 1 até 5 passo 1 faça
         se não(n[cont] % 2 = 0) então
            escreval(n[cont], " na", cont, "ª posição")
         fimse
      fimpara
   senão
      escreval(" Não há números impares :/")
   fimse
fimalgoritmo