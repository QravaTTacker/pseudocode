algoritmo "Multiplica��o Usando La�os"
var

   i, max : inteiro
   n , mult : real
   
inicio

      i <- 0
      escreva("Digite um valor para multiplicar: ")
      leia(n)
      escreva("Valor m�ximo para a multiplica��o: ")
      leia(max)
      escreva("Valor de partida para a multiplica��o: ")
      leia(i)
      
      se(i <= max)ent�o
      
      enquanto (i <= max) fa�a

      mult <- i * n
      escreval(i, " *", n, " = ", mult)
      
      i <- i + 1
      fimenquanto
      
      sen�o
      
           escreval("Impossivel termos: valor m�ximo < valor de partida")
      
      fimse


fimalgoritmo