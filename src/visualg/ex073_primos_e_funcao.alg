algoritmo "Primos e Função"
var
   valor : inteiro
função primoN(valor : inteiro) : inteiro
var
   i, c : inteiro
inicio
   c <- 0
   para i <- 2 até valor faça
      se (valor%i = 0) então
         c <- c + 1
      fimse
   fimpara
   se (c = 1) então
      retorne 1
   senão
      retorne 0
   fimse
fimfunção
inicio
   escreva(" Informe um valor inteiro: ")
   leia(valor)
   se (primoN(valor) = 1) então
      escreval(" O número ", valor:1:0, " é primo!")
   senão
      escreval(" O número ", valor:1:0, " não é primo!")
   fimse
fimalgoritmo