algoritmo "Analisador De Valores"
var
   i, num, soma, divd5, nulo, somap : inteiro
inicio

   num <- 0
   soma <- 0
   divd5 <- 0
   nulo <- 0
   somap <- 0
   para i := 1 at� 5 faca
      escreva(i, "� n�mero: ")
      leia(num)
      soma <- soma + num
      se(num%5 = 0)ent�o
         divd5 <- divd5 + 1
      fimse
      se(num = 0) ent�o
         nulo <- nulo + 1
      fimse
      se(num%2 = 0)ent�o
         somap <- somap + num
      fimse
   fimpara

   escreval
   escreval("Soma:", soma)
   escreval("M�dia:", (soma/5))
   escreval("Divisores de 5:", divd5)
   escreval("N�meros nulos:", nulo)
   escreval("Soma dos pares:", somap)

fimalgoritmo