algoritmo "Par e Impar"
var
   n: vetor[1..5] de inteiro
   cont, par, impar: inteiro
inicio
   par <- impar <- 0
   para cont <- 1 at� 5 fa�a
      escreva(cont, "� valor: ")
      leia(n[cont])
      se (n[cont] % 2 = 0) ent�o
         par <- par + 1
      sen�o
         impar <- impar + 1
      fimse
   fimpara
   escreval
   escreval(" Valores que s�o pares:", par, " no total...")
   se (par >= 1) ent�o
      para cont <- 1 at� 5 fa�a
         se (n[cont] % 2 = 0) ent�o
            escreval(n[cont], " na", cont, "� posi��o")
         fimse
      fimpara
   sen�o
      escreval(" N�o h� n�meros pares :/")
   fimse
   escreval
   escreval(" Valores que s�o impares:", impar, " no total...")
   se (impar >= 1) ent�o
      para cont <- 1 at� 5 passo 1 fa�a
         se n�o(n[cont] % 2 = 0) ent�o
            escreval(n[cont], " na", cont, "� posi��o")
         fimse
      fimpara
   sen�o
      escreval(" N�o h� n�meros impares :/")
   fimse
fimalgoritmo