algoritmo "Multiplicação Usando Laços"
var

   i, max : inteiro
   n , mult : real
   
inicio

      i <- 0
      escreva("Digite um valor para multiplicar: ")
      leia(n)
      escreva("Valor máximo para a multiplicação: ")
      leia(max)
      escreva("Valor de partida para a multiplicação: ")
      leia(i)
      
      se(i <= max)então
      
      enquanto (i <= max) faça

      mult <- i * n
      escreval(i, " *", n, " = ", mult)
      
      i <- i + 1
      fimenquanto
      
      senão
      
           escreval("Impossivel termos: valor máximo < valor de partida")
      
      fimse


fimalgoritmo