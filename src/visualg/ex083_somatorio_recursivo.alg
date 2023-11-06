algoritmo "Somatório Recursivo"
var
   x : inteiro
funcao somatorio(y : inteiro) : inteiro
inicio
   se ((y = 1) ou (y = 0)) então
      retorne y
   senão
      retorne y + somatorio(y-1)
   fimse
fimfuncao
inicio
   escreva(" Limite do somatório: ")
   leia(x)
   escreval
   se ((x > 250) ou (x < -200)) então
      escreval(" Limite permitido: (-200 <= x <= 250)")
   senão
      se (x >= 0) então
         escreval(" Soma de 0 até", x, " :", somatorio(x))
      senão
         x <- x*(-1)
         escreval(" Soma de 0 até", -x, " :", -somatorio(x))
      fimse
   fimse
fimalgoritmo